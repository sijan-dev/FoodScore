import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../app/tokens.dart';

class GoalsPage extends StatefulWidget {
  final void Function(List<String> selectedGoals) onGoalsChanged;

  const GoalsPage({super.key, required this.onGoalsChanged});

  @override
  State<GoalsPage> createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {
  final Set<String> _selected = {};

  static const _goals = [
    ('weight', 'Weight Management', Icons.monitor_weight, 'Track calories and portion control'),
    ('wellness', 'General Wellness', Icons.favorite, 'Eat balanced, feel great'),
    ('dietary', 'Dietary Monitoring', Icons.warning_amber, 'Avoid allergens and additives'),
    ('muscle', 'Muscle & Fitness', Icons.fitness_center, 'High protein, nutrient-dense foods'),
  ];

  void _toggle(String key) {
    setState(() {
      if (_selected.contains(key)) {
        _selected.remove(key);
      } else {
        _selected.add(key);
      }
      widget.onGoalsChanged(_selected.toList());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'What are your goals?',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w800,
              color: context.primary,
            ),
          ).animate().fadeIn(duration: 400.ms).slideY(
            begin: 0.3,
            end: 0,
            curve: Curves.easeOutCubic,
          ),
          const SizedBox(height: 8),
          Text(
            'Pick one or more to personalize your experience',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: context.onSurfaceVariant,
            ),
          ).animate().fadeIn(duration: 400.ms, delay: 150.ms).slideY(
            begin: 0.3,
            end: 0,
            curve: Curves.easeOutCubic,
          ),
          const SizedBox(height: 28),
          ..._goals.mapIndexed((i, g) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: _GoalCard(
              icon: g.$3,
              title: g.$2,
              subtitle: g.$4,
              selected: _selected.contains(g.$1),
              onTap: () => _toggle(g.$1),
            ).animate().fadeIn(duration: 350.ms, delay: (i * 100 + 250).ms).slideY(
              begin: 0.2,
              end: 0,
              curve: Curves.easeOutCubic,
            ),
          )),
        ],
      ),
    );
  }
}

class _GoalCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final bool selected;
  final VoidCallback onTap;

  const _GoalCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOutCubic,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: selected
              ? context.primaryContainer.withValues(alpha: 0.12)
              : context.surfaceContainerLowest,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: selected ? context.primary : context.surfaceContainerHighest,
            width: selected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            Icon(icon, color: selected ? context.primary : context.onSurfaceVariant),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: selected ? context.primary : context.onSurface,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: context.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            AnimatedScale(
              scale: selected ? 1.1 : 1.0,
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeOutBack,
              child: Icon(
                selected ? Icons.check_circle : Icons.circle_outlined,
                color: selected ? context.primary : context.onSurfaceVariant,
                size: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

extension _MapIndexed<T> on Iterable<T> {
  Iterable<R> mapIndexed<R>(R Function(int index, T item) f) sync* {
    var i = 0;
    for (final item in this) {
      yield f(i++, item);
    }
  }
}
