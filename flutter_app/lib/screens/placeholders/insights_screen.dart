import 'package:flutter/material.dart';

import '../../app/tokens.dart';

class InsightsScreen extends StatelessWidget {
  const InsightsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.surface,
      body: SafeArea(
        child: Center(
          child: Text(
            'Insights coming soon',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
              color: context.onSurfaceVariant,
            ),
          ),
        ),
      ),
    );
  }
}
