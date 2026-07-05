import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/tokens.dart';
import '../../models/scan_record.dart';
import '../../providers/scan_history_provider.dart';
import '../product/product_detail_screen.dart';
import '../shared/app_icon_button.dart';

class HistoryRecommendationsScreen extends ConsumerWidget {
  const HistoryRecommendationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final history = ref.watch(scanHistoryProvider);
    final grouped = _groupByDate(history);

    return Scaffold(
      backgroundColor: context.surface,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          children: [
            Row(
              children: [
                AppIconButton(
                  icon: Icons.arrow_back,
                  onTap: () => Navigator.of(context).pop(),
                  semanticLabel: 'Go back',
                ),
                const Spacer(),
                Text(
                  'Your Insights',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                AppIconButton(
                  icon: Icons.tune,
                  onTap: () {},
                  semanticLabel: 'Filter',
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: _StatCard(
                    label: 'Weekly Score',
                    value: _averageScore(history).toStringAsFixed(0),
                    useLogo: true,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _StatCard(
                    label: 'Healthy Picks',
                    value: _healthyCount(history).toString(),
                    icon: Icons.favorite,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Recommendations for You',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _RecommendationCard(
                    title: 'Almond Granola',
                    subtitle: 'High fiber, low sugar',
                    score: 92,
                  ),
                  _RecommendationCard(
                    title: 'Green Smoothie',
                    subtitle: 'Low sodium boost',
                    score: 88,
                  ),
                  _RecommendationCard(
                    title: 'Oat Bars',
                    subtitle: 'Plant protein',
                    score: 84,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            for (final entry in grouped.entries) ...[
              _SectionHeader(title: entry.key),
              const SizedBox(height: 10),
              for (final record in entry.value)
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: _HistoryCard(
                    record: record,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) =>
                              ProductDetailScreen(product: record.product),
                        ),
                      );
                    },
                  ),
                ),
            ],
          ],
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.label,
    required this.value,
    this.icon,
    this.useLogo = false,
  });

  final String label;
  final String value;
  final IconData? icon;
  final bool useLogo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: context.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: context.primaryContainer.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: useLogo
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/android-chrome-192x192.png',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  )
                : Icon(icon, color: context.primary),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
              ),
              Text(
                label,
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

class _RecommendationCard extends StatelessWidget {
  const _RecommendationCard({
    required this.title,
    required this.subtitle,
    required this.score,
  });

  final String title;
  final String subtitle;
  final int score;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: context.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 90,
            decoration: BoxDecoration(
              color: context.surfaceContainer,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Icon(Icons.image, color: context.onSurfaceVariant),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            subtitle,
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: context.onSurfaceVariant),
          ),
          const Spacer(),
          _ScoreChip(score: score),
        ],
      ),
    );
  }
}

class _ScoreChip extends StatelessWidget {
  const _ScoreChip({required this.score});

  final int score;

  @override
  Widget build(BuildContext context) {
    final color = score >= 80
        ? AppColors.good
        : (score >= 50 ? AppColors.moderate : AppColors.error);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        '$score',
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          fontWeight: FontWeight.w700,
          color: color,
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(
        context,
      ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
    );
  }
}

class _HistoryCard extends StatelessWidget {
  const _HistoryCard({required this.record, required this.onTap});

  final ScanRecord record;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final score = record.product.score;
    final color = score >= 80
        ? AppColors.good
        : (score >= 50 ? AppColors.moderate : AppColors.error);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: context.surfaceContainerLowest,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.network(
                record.product.imageUrl,
                width: 58,
                height: 58,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    color: context.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Icon(
                    Icons.image_outlined,
                    size: 24,
                    color: context.onSurfaceVariant.withValues(alpha: 0.4),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    record.product.name,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    record.product.subtitle,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: context.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.12),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  score.toString(),
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: color,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Map<String, List<ScanRecord>> _groupByDate(List<ScanRecord> history) {
  final Map<String, List<ScanRecord>> grouped = {};
  for (final record in history) {
    final date = record.scannedAt;
    final label = _dateLabel(date);
    grouped.putIfAbsent(label, () => []).add(record);
  }
  return grouped;
}

String _dateLabel(DateTime date) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final recordDay = DateTime(date.year, date.month, date.day);
  if (recordDay == today) {
    return 'Today';
  }
  if (recordDay == today.subtract(const Duration(days: 1))) {
    return 'Yesterday';
  }
  return '${date.month}/${date.day}/${date.year}';
}

double _averageScore(List<ScanRecord> history) {
  if (history.isEmpty) return 0;
  final total = history.fold<int>(0, (sum, r) => sum + r.product.score);
  return total / history.length;
}

int _healthyCount(List<ScanRecord> history) {
  return history.where((r) => r.product.score >= 80).length;
}
