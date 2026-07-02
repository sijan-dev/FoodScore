import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../app/tokens.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
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
            ).animate().fadeIn(duration: 500.ms).scaleXY(
              begin: 0,
              end: 1,
              curve: Curves.easeOutBack,
            ),
          ),
          const SizedBox(height: 32),
          Text(
            'Welcome to FoodScore',
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
            'Your personal food scoring companion.\nScan, track, and make healthier choices.',
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
