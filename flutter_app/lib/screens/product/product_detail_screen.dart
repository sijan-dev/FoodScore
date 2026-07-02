import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../app/tokens.dart';
import '../../models/product.dart';
import '../../utils/goal_highlighter.dart';
import 'similar_products_screen.dart';

class ProductDetailScreen extends ConsumerStatefulWidget {
  const ProductDetailScreen({super.key, required this.product});

  final Product product;

  @override
  ConsumerState<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends ConsumerState<ProductDetailScreen> {
  List<String> _goals = [];
  bool _goalsLoaded = false;

  @override
  void initState() {
    super.initState();
    _loadGoals();
  }

  Future<void> _loadGoals() async {
    final prefs = await SharedPreferences.getInstance();
    if (!mounted) return;
    setState(() {
      _goals = prefs.getStringList('health_goals') ?? [];
      _goalsLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    final tags = <String>{
      if ((product.category ?? '').isNotEmpty) product.category!,
      if (product.subtitle.isNotEmpty) product.subtitle,
    }.toList();

    final hls = _goalsLoaded ? GoalHighlighter.highlights(product, _goals) : <GoalHighlight>[];
    final scoreAdj = _goalsLoaded ? GoalHighlighter.scoreAdjustment(product, _goals) : 0;
    final adjustedScore = (product.score + scoreAdj).clamp(0, 100);
    final prioritizedInsights = _goalsLoaded
        ? GoalHighlighter.prioritizeInsights(product, _goals, product.insights)
        : product.insights;

    return Scaffold(
      backgroundColor: context.surface,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
          children: [
            Row(
              children: [
                _IconButton(
                  icon: Icons.arrow_back,
                  onTap: () => Navigator.of(context).pop(),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: context.surfaceContainer,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.eco, size: 16, color: context.primary),
                      const SizedBox(width: 6),
                      Text(
                        'FoodScore',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                _IconButton(icon: Icons.bookmark_border, onTap: () {}),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: context.surfaceContainerLowest,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.shadow.withValues(alpha: 0.1),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.network(
                      product.imageUrl,
                      width: double.infinity,
                      height: 180,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/android-chrome-192x192.png',
                          width: double.infinity,
                          height: 180,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      for (final tag in tags.take(2)) _TagChip(label: tag),
                      _TagChip(label: 'Plant-based'),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    product.name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _ScoreRingLarge(score: adjustedScore),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '$adjustedScore/100',
                            style: Theme.of(context).textTheme.headlineSmall
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                          if (scoreAdj != 0 && _goalsLoaded) ...[
                            const SizedBox(height: 2),
                            Text(
                              scoreAdj > 0
                                  ? '+$scoreAdj from goals'
                                  : '$scoreAdj from goals',
                              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                color: scoreAdj > 0 ? AppColors.good : AppColors.error,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                          const SizedBox(height: 4),
                          Text(
                            _scoreLabel(adjustedScore),
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(color: context.onSurfaceVariant),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (hls.isNotEmpty) ...[
              const SizedBox(height: 18),
              _SectionTitle(title: 'Your Goals'),
              const SizedBox(height: 10),
              ...hls.map((hl) => _GoalBadge(highlight: hl)),
            ],
            const SizedBox(height: 18),
            _SectionTitle(title: 'Nutrition Score'),
            const SizedBox(height: 10),
            _NutriScoreCard(score: product.nutriScore),
            const SizedBox(height: 18),
            _SectionTitle(title: 'Health Impact'),
            const SizedBox(height: 10),
            _HealthImpactList(insights: prioritizedInsights),
            const SizedBox(height: 18),
            _SectionTitle(title: 'Ingredients Analysis'),
            const SizedBox(height: 10),
            _IngredientsList(product: product),
            const SizedBox(height: 18),
            _InsightCard(
              text: prioritizedInsights.isNotEmpty
                  ? prioritizedInsights.first
                  : 'Balanced macros with moderate sugar. Best for occasional use.',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => SimilarProductsScreen(baseProduct: product),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _GoalBadge extends StatelessWidget {
  const _GoalBadge({required this.highlight});

  final GoalHighlight highlight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: highlight.color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: highlight.color.withValues(alpha: 0.25)),
      ),
      child: Row(
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: highlight.color.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(highlight.icon, color: highlight.color, size: 18),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                highlight.badge,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: highlight.color,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                highlight.description,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: context.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _IconButton extends StatelessWidget {
  const _IconButton({required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: context.surfaceContainer,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Icon(icon, color: context.onSurface),
      ),
    );
  }
}

class _TagChip extends StatelessWidget {
  const _TagChip({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: context.primaryContainer.withValues(alpha: 0.18),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: context.primary,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _ScoreRingLarge extends StatelessWidget {
  const _ScoreRingLarge({required this.score});

  final int score;

  @override
  Widget build(BuildContext context) {
    final color = score >= 80
        ? AppColors.good
        : (score >= 50 ? AppColors.moderate : AppColors.error);
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 82,
          height: 82,
          child: CircularProgressIndicator(
            value: score / 100,
            strokeWidth: 8,
            backgroundColor: context.surfaceContainerHighest,
            valueColor: AlwaysStoppedAnimation<Color>(color),
          ),
        ),
        Text(
          score.toString(),
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(
        context,
      ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
    );
  }
}

class _NutriScoreCard extends StatelessWidget {
  const _NutriScoreCard({required this.score});

  final String score;

  @override
  Widget build(BuildContext context) {
    const letters = ['A', 'B', 'C', 'D', 'E'];
    final active = score.toUpperCase();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
      decoration: BoxDecoration(
        color: context.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            'NUTRI-SCORE',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: context.onSurfaceVariant,
                  letterSpacing: 1.2,
                ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (final letter in letters)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: letter == active ? 60 : 44,
                    height: letter == active ? 44 : 36,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: letter == active
                          ? _nutriColor(letter)
                          : _nutriColor(letter).withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: letter == active
                          ? [
                              BoxShadow(
                                color: _nutriColor(letter).withValues(alpha: 0.3),
                                blurRadius: 8,
                                offset: const Offset(0, 4),
                              )
                            ]
                          : null,
                    ),
                    child: Text(
                      letter,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: letter == active ? Colors.white : _nutriColor(letter),
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

Color _nutriColor(String letter) {
  switch (letter.toUpperCase()) {
    case 'A':
      return AppColors.success;
    case 'B':
      return AppColors.good;
    case 'C':
      return AppColors.moderate;
    case 'D':
      return AppColors.fair;
    default:
      return AppColors.poor;
  }
}

class _HealthImpactList extends StatelessWidget {
  const _HealthImpactList({required this.insights});

  final List<String> insights;

  @override
  Widget build(BuildContext context) {
    final items = insights.isNotEmpty
        ? insights.take(3).toList()
        : <String>[
            'High fiber supports digestion.',
            'Low sodium helps heart health.',
            'Moderate sugar content.',
          ];

    return Column(
      children: [
        for (var index = 0; index < items.length; index++)
          _HealthImpactItem(text: items[index], isPositive: index < 2),
      ],
    );
  }
}

class _HealthImpactItem extends StatelessWidget {
  const _HealthImpactItem({required this.text, required this.isPositive});

  final String text;
  final bool isPositive;

  @override
  Widget build(BuildContext context) {
    final color = isPositive ? AppColors.good : AppColors.moderate;
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: context.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withValues(alpha: 0.2)),
      ),
      child: Row(
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              isPositive ? Icons.check : Icons.info_outline,
              color: color,
              size: 18,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(text, style: Theme.of(context).textTheme.bodySmall),
          ),
        ],
      ),
    );
  }
}

class _IngredientsList extends StatelessWidget {
  const _IngredientsList({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final ingredients = <String>{
      ...product.flaggedIngredients.map((flag) => flag.name),
      ...product.additives,
    }.toList();

    final items = ingredients.isNotEmpty
        ? ingredients.take(4).toList()
        : <String>['Organic oats', 'Coconut sugar', 'Natural vanilla'];

    return Column(
      children: [
        for (final item in items)
          _IngredientRow(name: item, riskLabel: _riskLabel(item)),
      ],
    );
  }

  String _riskLabel(String name) {
    final lower = name.toLowerCase();
    if (lower.contains('sugar') || lower.contains('syrup')) {
      return 'Moderate';
    }
    if (lower.contains('additive') || lower.contains('preserv')) {
      return 'Check';
    }
    return 'Clean';
  }
}

class _IngredientRow extends StatelessWidget {
  const _IngredientRow({required this.name, required this.riskLabel});

  final String name;
  final String riskLabel;

  @override
  Widget build(BuildContext context) {
    final color = switch (riskLabel) {
      'Clean' => AppColors.good,
      'Moderate' => AppColors.moderate,
      _ => AppColors.fair,
    };

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: context.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(16),
        border: Border(left: BorderSide(color: color, width: 4)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              name,
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              riskLabel,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: color,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InsightCard extends StatelessWidget {
  const _InsightCard({required this.text, required this.onTap});

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            context.primaryContainer.withValues(alpha: 0.2),
            context.surfaceContainerLowest,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: context.primaryContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.auto_awesome,
                  color: context.onPrimary,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'AI Insight',
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            text,
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: context.onSurfaceVariant),
          ),
          const SizedBox(height: 12),
          FilledButton.icon(
            onPressed: onTap,
            icon: const Icon(Icons.swap_horiz),
            label: const Text('Similar Products'),
          ),
        ],
      ),
    );
  }
}

String _scoreLabel(int score) {
  if (score >= 80) {
    return 'Excellent choice';
  }
  if (score >= 60) {
    return 'Good balance';
  }
  if (score >= 40) {
    return 'Moderate pick';
  }
  return 'Consider alternatives';
}
