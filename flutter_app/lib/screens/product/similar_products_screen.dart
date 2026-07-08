import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/tokens.dart';
import '../../models/product.dart';
import '../../state/home_providers.dart';
import '../product/product_detail_screen.dart';
import '../shared/product_image.dart';

class SimilarProductsScreen extends ConsumerStatefulWidget {
  const SimilarProductsScreen({super.key, required this.baseProduct});

  final Product baseProduct;

  @override
  ConsumerState<SimilarProductsScreen> createState() => _SimilarProductsScreenState();
}

class _SimilarProductsScreenState extends ConsumerState<SimilarProductsScreen> {
  Map<String, List<Product>> _results = {"similar": [], "healthier": []};
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      final repo = ref.read(productRepositoryProvider);
      final results = await repo.fetchSimilarProducts(widget.baseProduct.id);
      if (!mounted) return;
      setState(() {
        _results = results;
        _loading = false;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() => _loading = false);
    }
  }

  List<Product> get _similarProducts => _results["similar"] ?? [];
  List<Product> get _healthierProducts => _results["healthier"] ?? [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.surface,
      appBar: AppBar(
        backgroundColor: context.primary,
        foregroundColor: context.onPrimary,
        elevation: 0,
        title: const Text('Similar Products'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code_2)),
        ],
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _similarProducts.isEmpty && _healthierProducts.isEmpty
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(32),
                    child: Text(
                      'No similar products found yet. Scan more products to get recommendations.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: context.onSurfaceVariant,
                      ),
                    ),
                  ),
                )
              : ListView(
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 28),
                  children: [
                    _CurrentProductCard(product: widget.baseProduct),
                    if (_similarProducts.isNotEmpty) ...[
                      const SizedBox(height: 20),
                      _SectionHeader(title: 'Similar Products'),
                      const SizedBox(height: 10),
                      for (final product in _similarProducts)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: _AlternativeCard(product: product),
                        ),
                    ],
                    if (_healthierProducts.isNotEmpty) ...[
                      const SizedBox(height: 20),
                      _SectionHeader(title: 'Healthier Alternatives'),
                      const SizedBox(height: 10),
                      for (final product in _healthierProducts)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: _AlternativeCard(product: product),
                        ),
                    ],
                  ],
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
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class _CurrentProductCard extends StatelessWidget {
  const _CurrentProductCard({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        children: [
          ProductImage(
            imageUrl: product.imageUrl,
            productName: product.name,
            width: 72,
            height: 72,
            borderRadius: 16,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 4),
                Text(
                  product.subtitle,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: context.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          _ScoreBadge(score: product.score),
        ],
      ),
    );
  }
}

class _AlternativeCard extends StatelessWidget {
  const _AlternativeCard({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final color = _scoreColor(product.score);
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => ProductDetailScreen(product: product),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: context.surfaceContainerLowest,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              ProductImage(
                imageUrl: product.imageUrl,
                productName: product.name,
                width: 70,
                height: 70,
              ),
              Positioned(
                bottom: -6,
                right: -6,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    product.score.toString(),
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                Text(
                  product.subtitle,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: context.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_right),
        ],
      ),
      ),
    );
  }
}

class _ScoreBadge extends StatelessWidget {
  const _ScoreBadge({required this.score});

  final int score;

  @override
  Widget build(BuildContext context) {
    final color = _scoreColor(score);
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.2),
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
    );
  }
}

Color _scoreColor(int score) {
  if (score >= 80) return AppColors.good;
  if (score >= 60) return AppColors.primary;
  if (score >= 40) return AppColors.moderate;
  return AppColors.error;
}
