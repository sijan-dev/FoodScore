import 'package:flutter/material.dart';

import '../../app/tokens.dart';
import '../../models/product.dart';

class ProductHistoryCard extends StatelessWidget {
  const ProductHistoryCard({
    super.key,
    required this.product,
    this.onTap,
    this.showInsightPreview = true,
  });

  final Product product;
  final VoidCallback? onTap;
  final bool showInsightPreview;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surfaceContainerLow,
      borderRadius: BorderRadius.circular(24),
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: AppColors.outlineVariant.withValues(alpha: 0.55),
            ),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  product.imageUrl,
                  width: 72,
                  height: 72,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      product.subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 6,
                      children: [
                        _ScoreBadge(
                          label: 'NUTRI ${product.nutriScore}',
                          background: _nutriColor(product.nutriScore),
                          foreground: Colors.white,
                        ),
                        _ScoreBadge(
                          label: 'NOVA ${product.novaGroup}',
                          background: _novaColor(product.novaGroup),
                          foreground: Colors.white,
                        ),
                        _ScoreBadge(
                          label: 'ECO ${product.ecoScore}',
                          background: _ecoBackground(product.ecoScore),
                          foreground: _ecoForeground(product.ecoScore),
                        ),
                      ],
                    ),
                    if (showInsightPreview && product.insights.isNotEmpty) ...[
                      const SizedBox(height: 8),
                      Text(
                        product.insights.first,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _nutriColor(String value) {
    switch (value.toUpperCase()) {
      case 'A':
        return const Color(0xFF038141);
      case 'B':
        return const Color(0xFF85BB2F);
      case 'C':
        return const Color(0xFFFECB02);
      case 'D':
        return const Color(0xFFEE8100);
      default:
        return const Color(0xFFE63E11);
    }
  }

  Color _novaColor(int value) {
    switch (value) {
      case 1:
        return const Color(0xFF00A651);
      case 2:
        return const Color(0xFFFDB913);
      case 3:
        return const Color(0xFFF37021);
      default:
        return const Color(0xFFED1C24);
    }
  }

  Color _ecoBackground(String value) {
    switch (value.toUpperCase()) {
      case 'A':
      case 'B':
        return const Color(0xFFD8F0DE);
      case 'C':
        return const Color(0xFFF8E0A8);
      case 'D':
      case 'E':
        return const Color(0xFFFFE3D8);
      default:
        return AppColors.surfaceContainer;
    }
  }

  Color _ecoForeground(String value) {
    switch (value.toUpperCase()) {
      case 'A':
      case 'B':
        return const Color(0xFF1F6A3B);
      case 'C':
        return const Color(0xFF7A5A13);
      case 'D':
      case 'E':
        return const Color(0xFF9A3513);
      default:
        return AppColors.onSurface;
    }
  }
}

class _ScoreBadge extends StatelessWidget {
  const _ScoreBadge({
    required this.label,
    required this.background,
    required this.foreground,
  });

  final String label;
  final Color background;
  final Color foreground;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: foreground,
          fontWeight: FontWeight.w800,
          letterSpacing: 0.2,
        ),
      ),
    );
  }
}
