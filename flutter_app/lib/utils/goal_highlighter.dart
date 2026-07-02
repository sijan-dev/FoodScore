import 'package:flutter/material.dart';

import '../app/tokens.dart';
import '../models/product.dart';

class GoalHighlight {
  final String badge;
  final IconData icon;
  final Color color;
  final String description;

  const GoalHighlight({
    required this.badge,
    required this.icon,
    required this.color,
    required this.description,
  });
}

class GoalHighlighter {
  static List<GoalHighlight> highlights(Product product, List<String> goals) {
    if (goals.isEmpty) return [];
    final n = product.nutrition;
    final result = <GoalHighlight>[];

    for (final goal in goals) {
      switch (goal) {
        case 'Weight Management':
          if (n.energyKcal > 0 && n.energyKcal <= 200) {
            result.add(const GoalHighlight(
              badge: 'Weight-Friendly',
              icon: Icons.fitness_center,
              color: AppColors.good,
              description: 'Low calorie density — fits weight management goals.',
            ));
          }
        case 'General Wellness':
          if (product.score >= 60) {
            result.add(const GoalHighlight(
              badge: 'Balanced Pick',
              icon: Icons.spa,
              color: AppColors.good,
              description: 'Overall balanced nutrition for daily wellness.',
            ));
          }
        case 'Dietary Monitoring':
          if (product.additives.isEmpty) {
            result.add(const GoalHighlight(
              badge: 'No Additives',
              icon: Icons.science_outlined,
              color: AppColors.good,
              description: 'Free from additives and preservatives.',
            ));
          }
        case 'Muscle & Fitness':
          if (n.proteinG >= 15) {
            result.add(const GoalHighlight(
              badge: 'High Protein',
              icon: Icons.bolt,
              color: AppColors.good,
              description: 'Excellent protein source for muscle support.',
            ));
          } else if (n.proteinG >= 8) {
            result.add(const GoalHighlight(
              badge: 'Moderate Protein',
              icon: Icons.bolt,
              color: AppColors.moderate,
              description: 'Contains moderate protein for fitness goals.',
            ));
          }
        case 'Heart Health':
          if (n.sodiumG > 0 && n.sodiumG <= 120) {
            result.add(const GoalHighlight(
              badge: 'Low Sodium',
              icon: Icons.favorite,
              color: AppColors.good,
              description: 'Low sodium content supports heart health.',
            ));
          }
          if (n.fatG > 0 && n.fatG <= 5) {
            result.add(const GoalHighlight(
              badge: 'Low Fat',
              icon: Icons.favorite,
              color: AppColors.good,
              description: 'Low fat profile for heart-conscious choices.',
            ));
          }
        case 'Digestive Health':
          if (n.fiberG >= 5) {
            result.add(const GoalHighlight(
              badge: 'High Fiber',
              icon: Icons.grass,
              color: AppColors.good,
              description: 'High fiber supports healthy digestion.',
            ));
          } else if (n.fiberG >= 3) {
            result.add(const GoalHighlight(
              badge: 'Moderate Fiber',
              icon: Icons.grass,
              color: AppColors.moderate,
              description: 'Contains some fiber for digestive health.',
            ));
          }
        case 'Vegan / Plant-Based':
          final isPlant = !product.flaggedIngredients.any(
            (f) =>
                f.name.toLowerCase().contains('milk') ||
                f.name.toLowerCase().contains('egg') ||
                f.name.toLowerCase().contains('cheese') ||
                f.name.toLowerCase().contains('cream') ||
                f.name.toLowerCase().contains('honey') ||
                f.name.toLowerCase().contains('gelatin'),
          );
          if (isPlant) {
            result.add(const GoalHighlight(
              badge: 'Plant-Based',
              icon: Icons.eco,
              color: AppColors.good,
              description: 'Compatible with vegan and plant-based diets.',
            ));
          }
        case 'Low Carb':
          if (n.sugarG >= 0 && n.sugarG <= 5) {
            result.add(const GoalHighlight(
              badge: 'Low Sugar',
              icon: Icons.shield_outlined,
              color: AppColors.good,
              description: 'Low sugar content fits low-carb goals.',
            ));
          }
      }
    }
    return result;
  }

  static int scoreAdjustment(Product product, List<String> goals) {
    if (goals.isEmpty) return 0;

    final n = product.nutrition;
    int adj = 0;

    for (final goal in goals) {
      switch (goal) {
        case 'Weight Management':
          if (n.energyKcal <= 150) { adj += 5; }
          break;
        case 'Muscle & Fitness':
          if (n.proteinG >= 15) { adj += 6; }
          else if (n.proteinG >= 8) { adj += 3; }
          break;
        case 'Heart Health':
          if (n.sodiumG <= 120) { adj += 4; }
          if (n.fatG <= 5) { adj += 3; }
          break;
        case 'Digestive Health':
          if (n.fiberG >= 5) { adj += 5; }
          else if (n.fiberG >= 3) { adj += 2; }
          break;
        case 'Low Carb':
          if (n.sugarG <= 5) { adj += 5; }
          else if (n.sugarG > 20) { adj -= 4; }
          break;
        case 'Dietary Monitoring':
          if (product.additives.isEmpty) { adj += 4; }
          else if (product.additives.length > 3) { adj -= 3; }
          break;
        case 'General Wellness':
          if (product.score >= 70) adj += 3;
          break;
        case 'Vegan / Plant-Based':
          break;
      }
    }

    return adj.clamp(-20, 20);
  }

  static List<String> prioritizeInsights(
    Product product,
    List<String> goals,
    List<String> insights,
  ) {
    if (goals.isEmpty || insights.isEmpty) return insights;

    final prioritized = <String>[];
    final remaining = [...insights];

    for (final goal in goals) {
      String? match;
      switch (goal) {
        case 'Weight Management':
          match = _takeFirstMatching(remaining, (i) =>
              i.toLowerCase().contains('calorie') ||
              i.toLowerCase().contains('density') ||
              i.toLowerCase().contains('serving'));
        case 'Muscle & Fitness':
          match = _takeFirstMatching(remaining, (i) =>
              i.toLowerCase().contains('protein'));
        case 'Heart Health':
          match = _takeFirstMatching(remaining, (i) =>
              i.toLowerCase().contains('sodium') ||
              i.toLowerCase().contains('fat'));
        case 'Digestive Health':
          match = _takeFirstMatching(remaining, (i) =>
              i.toLowerCase().contains('fiber') ||
              i.toLowerCase().contains('digest'));
        case 'Low Carb':
          match = _takeFirstMatching(remaining, (i) =>
              i.toLowerCase().contains('sugar'));
        case 'Dietary Monitoring':
          match = _takeFirstMatching(remaining, (i) =>
              i.toLowerCase().contains('additive') ||
              i.toLowerCase().contains('preserv'));
        default:
          match = _takeFirstMatching(remaining, (i) =>
              i.contains('Nutri-Score'));
      }
      if (match != null) prioritized.add(match);
    }

    prioritized.addAll(remaining);
    return prioritized.take(3).toList();
  }

  static String? _takeFirstMatching(List<String> list, bool Function(String) test) {
    for (var i = 0; i < list.length; i++) {
      if (test(list[i])) {
        return list.removeAt(i);
      }
    }
    return null;
  }
}
