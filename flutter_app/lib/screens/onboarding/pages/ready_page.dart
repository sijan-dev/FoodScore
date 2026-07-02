import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../app/tokens.dart';

class ReadyPage extends StatefulWidget {
  const ReadyPage({super.key});

  @override
  State<ReadyPage> createState() => _ReadyPageState();
}

class _ReadyPageState extends State<ReadyPage> with SingleTickerProviderStateMixin {
  late AnimationController _pulseController;
  int _pulseCount = 0;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: 1.5.seconds,
    )..addStatusListener(_onPulseStatus);
    _pulseController.forward();
  }

  void _onPulseStatus(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      if (_pulseCount < 3) {
        _pulseCount++;
        _pulseController.reverse();
      }
    } else if (status == AnimationStatus.dismissed) {
      if (_pulseCount < 3) {
        _pulseController.forward();
      }
    }
  }

  @override
  void dispose() {
    _pulseController.removeStatusListener(_onPulseStatus);
    _pulseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: _pulseController,
            builder: (context, child) {
              return Transform.scale(
                scale: 1.0 + (_pulseController.value * 0.08),
                child: child,
              );
            },
            child: Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                color: context.primaryContainer.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(32),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(28),
                child: Image.asset(
                  'assets/images/android-chrome-192x192.png',
                  width: 100,
                  height: 100,
                ),
              ),
            ).animate().fadeIn(duration: 600.ms).scaleXY(
              begin: 0,
              end: 1,
              curve: Curves.easeOutBack,
            ),
          ),
          const SizedBox(height: 32),
          Text(
            "You're All Set!",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w800,
              color: context.primary,
            ),
          ).animate().fadeIn(duration: 400.ms, delay: 200.ms).slideY(
            begin: 0.3,
            end: 0,
            curve: Curves.easeOutCubic,
          ),
          const SizedBox(height: 16),
          Text(
            'Sign in to sync your data across devices\nand get the most out of FoodScore.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: context.onSurfaceVariant,
              height: 1.5,
            ),
          ).animate().fadeIn(duration: 400.ms, delay: 400.ms).slideY(
            begin: 0.3,
            end: 0,
            curve: Curves.easeOutCubic,
          ),
        ],
      ),
    );
  }
}
