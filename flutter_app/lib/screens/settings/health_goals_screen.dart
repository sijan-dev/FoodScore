import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../app/tokens.dart';

class HealthGoalsScreen extends ConsumerStatefulWidget {
  const HealthGoalsScreen({super.key});

  @override
  ConsumerState<HealthGoalsScreen> createState() => _HealthGoalsScreenState();
}

class _HealthGoalsScreenState extends ConsumerState<HealthGoalsScreen> {
  final Set<String> _selected = {};
  bool _loading = true;

  static const _goals = [
    (
      'weight',
      'Weight Management',
      Icons.monitor_weight,
      'Track calories and portion control',
    ),
    (
      'wellness',
      'General Wellness',
      Icons.favorite,
      'Eat balanced, feel great',
    ),
    (
      'dietary',
      'Dietary Monitoring',
      Icons.warning_amber,
      'Avoid allergens and additives',
    ),
    (
      'muscle',
      'Muscle & Fitness',
      Icons.fitness_center,
      'High protein, nutrient-dense foods',
    ),
    (
      'heart',
      'Heart Health',
      Icons.favorite_border,
      'Low sodium, heart-friendly foods',
    ),
    (
      'digestive',
      'Digestive Health',
      Icons.self_improvement,
      'High fiber and probiotic foods',
    ),
    (
      'vegan',
      'Vegan / Plant-Based',
      Icons.eco,
      'Plant-based nutrition tracking',
    ),
    ('low_carb', 'Low Carb', Icons.bakery_dining, 'Reduce carbohydrate intake'),
  ];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getStringList('health_goals') ?? [];
    setState(() {
      _selected.addAll(saved);
      _loading = false;
    });
  }

  Future<void> _toggle(String key) async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      if (_selected.contains(key)) {
        _selected.remove(key);
      } else {
        _selected.add(key);
      }
      prefs.setStringList('health_goals', _selected.toList());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.surface,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        automaticallyImplyLeading: false,
        title: const Text('Health Goals'),
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 28),
              children: [
                Text(
                  'Select your health goals',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: context.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Choose one or more to personalize your nutrition insights.',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: context.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 20),
                ..._goals.map(
                  (g) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: _GoalCard(
                      icon: g.$3,
                      title: g.$2,
                      subtitle: g.$4,
                      selected: _selected.contains(g.$1),
                      onTap: () => _toggle(g.$1),
                    ),
                  ),
                ),
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
            Icon(
              icon,
              color: selected ? context.primary : context.onSurfaceVariant,
            ),
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
            Icon(
              selected ? Icons.check_circle : Icons.circle_outlined,
              color: selected ? context.primary : context.onSurfaceVariant,
              size: 22,
            ),
          ],
        ),
      ),
    );
  }
}
