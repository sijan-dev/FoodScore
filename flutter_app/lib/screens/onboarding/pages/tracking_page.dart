import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../app/tokens.dart';

class TrackingPage extends StatelessWidget {
  const TrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: context.primaryContainer.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(Icons.timeline, size: 64, color: context.primary),
              )
              .animate()
              .fadeIn(duration: 500.ms)
              .scaleXY(begin: 0, end: 1, curve: Curves.easeOutBack),
          const SizedBox(height: 32),
          Text(
                'Track Your History',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: context.primary,
                ),
              )
              .animate()
              .fadeIn(duration: 400.ms, delay: 200.ms)
              .slideY(begin: 0.3, end: 0, curve: Curves.easeOutCubic),
          const SizedBox(height: 16),
          Text(
                'Keep a complete history of everything you scan.\nMonitor trends, discover patterns, and improve over time.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: context.onSurfaceVariant,
                  height: 1.5,
                ),
              )
              .animate()
              .fadeIn(duration: 400.ms, delay: 400.ms)
              .slideY(begin: 0.3, end: 0, curve: Curves.easeOutCubic),
        ],
      ),
    );
  }
}
