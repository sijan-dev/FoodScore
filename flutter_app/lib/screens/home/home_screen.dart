import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../app/app_shell.dart';
import '../../app/tokens.dart';
import '../../models/product.dart';
import '../../state/home_providers.dart';
import '../scanner/scanner_screen.dart';
import '../shared/product_history_card.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  List<Product> _searchResults = const <Product>[];
  bool _isSearching = false;
  bool _hasSearched = false;

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  Future<void> _runSearch() async {
    final query = _searchController.text.trim();
    if (query.isEmpty) {
      setState(() {
        _searchResults = const <Product>[];
        _hasSearched = false;
        _isSearching = false;
      });
      return;
    }

    setState(() {
      _isSearching = true;
      _hasSearched = true;
    });

    try {
      final results = await ref
          .read(productRepositoryProvider)
          .searchProducts(query);
      if (!mounted) {
        return;
      }
      setState(() {
        _searchResults = results;
      });
    } finally {
      if (mounted) {
        setState(() {
          _isSearching = false;
        });
      }
    }
  }

  Future<void> _selectSearchResult(Product product) async {
    await ref.read(scanHistoryProvider.notifier).addScan(product);
    if (!mounted) {
      return;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Added ${product.name} to history.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final historyAsync = ref.watch(scanHistoryProvider);

    return Scaffold(
      backgroundColor: AppColors.surface,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 14, 20, 0),
                child: _TopBar(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 14, 20, 0),
                child: _SearchBar(
                  controller: _searchController,
                  focusNode: _searchFocusNode,
                  isSearching: _isSearching,
                  onSubmitted: (_) => _runSearch(),
                  onSearchTap: _runSearch,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: _SearchResultsSection(
                hasSearched: _hasSearched,
                isSearching: _isSearching,
                results: _searchResults,
                onSelectProduct: _selectSearchResult,
                onContributeTap: () => _startScan(context, ref),
              ),
            ),
            SliverToBoxAdapter(
              child: const Padding(
                padding: EdgeInsets.fromLTRB(20, 12, 20, 0),
                child: _CategoriesRow(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 22, 20, 0),
                child: _ScanCard(onTap: () => _startScan(context, ref)),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 26, 20, 12),
                child: _SectionHeader(
                  onClear: () async {
                    await ref.read(scanHistoryProvider.notifier).clear();
                  },
                  onViewHistory: () {
                    ref.read(navIndexProvider.notifier).state = 1;
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: historyAsync.when(
                  data: (history) {
                    return _RecentList(items: history);
                  },
                  loading: () => const _RecentListSkeleton(),
                  error: (_, _) => const _RecentListSkeleton(),
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 150)),
          ],
        ),
      ),
    );
  }

  static Future<void> _startScan(BuildContext context, WidgetRef ref) async {
    var status = await Permission.camera.status;
    if (status.isPermanentlyDenied) {
      await openAppSettings();
      return;
    }

    if (!status.isGranted) {
      status = await Permission.camera.request();
      if (status.isPermanentlyDenied) {
        await openAppSettings();
        return;
      }
      if (!status.isGranted) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Camera permission is required to scan products.'),
            ),
          );
        }
        return;
      }
    }

    final product = await Navigator.of(
      context,
    ).push<Product>(MaterialPageRoute(builder: (_) => const ScannerScreen()));
    if (product == null || !context.mounted) {
      return;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Added ${product.name} to history.')),
    );
  }
}

class _TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: AppColors.onSurface,
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            'Open Food Facts',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person_outline),
          color: AppColors.onSurface,
        ),
      ],
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({
    required this.controller,
    required this.focusNode,
    required this.isSearching,
    required this.onSubmitted,
    required this.onSearchTap,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isSearching;
  final ValueChanged<String> onSubmitted;
  final VoidCallback onSearchTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: AppColors.outlineVariant),
      ),
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: AppColors.onSurface.withValues(alpha: 0.7),
            ),
            onPressed: onSearchTap,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: controller,
              focusNode: focusNode,
              textInputAction: TextInputAction.search,
              onSubmitted: onSubmitted,
              decoration: InputDecoration(
                hintText: 'Search for products, brands...',
                border: InputBorder.none,
                isDense: true,
                hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColors.onSurface.withValues(alpha: 0.65),
                ),
              ),
            ),
          ),
          if (isSearching)
            const SizedBox(
              width: 22,
              height: 22,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          else
            Icon(
              Icons.qr_code_scanner,
              color: AppColors.onSurface.withValues(alpha: 0.8),
            ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}

class _SearchResultsSection extends StatelessWidget {
  const _SearchResultsSection({
    required this.hasSearched,
    required this.isSearching,
    required this.results,
    required this.onSelectProduct,
    required this.onContributeTap,
  });

  final bool hasSearched;
  final bool isSearching;
  final List<Product> results;
  final Future<void> Function(Product product) onSelectProduct;
  final VoidCallback onContributeTap;

  @override
  Widget build(BuildContext context) {
    if (!hasSearched) {
      return const SizedBox.shrink();
    }

    if (isSearching) {
      return const Padding(
        padding: EdgeInsets.fromLTRB(20, 12, 20, 0),
        child: LinearProgressIndicator(),
      );
    }

    if (results.isEmpty) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(20, 14, 20, 0),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.surfaceContainerLow,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.outlineVariant),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Product not found',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Help improve OpenFoodFacts by contributing this product through barcode scan.',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: onContributeTap,
                icon: const Icon(Icons.qr_code_scanner),
                label: const Text('Contribute Product'),
              ),
            ],
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 14, 20, 0),
      child: Column(
        children: [
          for (var i = 0; i < results.length; i++) ...[
            ProductHistoryCard(
              product: results[i],
              onTap: () => onSelectProduct(results[i]),
            ),
            if (i != results.length - 1) const SizedBox(height: 12),
          ],
        ],
      ),
    );
  }
}

class _CategoriesRow extends StatelessWidget {
  const _CategoriesRow();

  @override
  Widget build(BuildContext context) {
    const labels = ['All', 'Beverages', 'Snacks', 'Dairy', 'Breakfast'];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i < labels.length; i++)
            Padding(
              padding: EdgeInsets.only(right: i == labels.length - 1 ? 0 : 8),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: i == 0
                      ? AppColors.secondaryContainer
                      : AppColors.surfaceContainer,
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Text(
                  labels[i],
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: i == 0 ? FontWeight.w700 : FontWeight.w500,
                    color: AppColors.onSurface,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _ScanCard extends StatelessWidget {
  const _ScanCard({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.primaryContainer,
      borderRadius: BorderRadius.circular(24),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(24),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 26),
          child: Column(
            children: [
              Container(
                width: 86,
                height: 86,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.2),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.qr_code_scanner,
                  size: 44,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 18),
              Text(
                'Scan a product',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Get Nutri-Score, Nova group and Eco-Score',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.white.withValues(alpha: 0.9),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.onClear, required this.onViewHistory});

  final Future<void> Function() onClear;
  final VoidCallback onViewHistory;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Recently Scanned',
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700),
          ),
        ),
        TextButton(
          onPressed: onViewHistory,
          child: Text(
            'VIEW HISTORY',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w800,
              color: AppColors.primary,
              letterSpacing: 1.1,
            ),
          ),
        ),
        TextButton(
          onPressed: onClear,
          child: Text(
            'CLEAR',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w800,
              color: AppColors.primary,
              letterSpacing: 1.1,
            ),
          ),
        ),
      ],
    );
  }
}

class _RecentList extends StatelessWidget {
  const _RecentList({required this.items});

  final List<Product> items;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: AppColors.surfaceContainerLow,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.outlineVariant),
        ),
        child: Text(
          'No scans yet. Start by scanning your first product.',
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: AppColors.onSurfaceVariant),
        ),
      );
    }

    return Column(
      children: [
        for (var i = 0; i < items.length; i++) ...[
          ProductHistoryCard(product: items[i]),
          if (i != items.length - 1) const SizedBox(height: 14),
        ],
      ],
    );
  }
}

class _RecentListSkeleton extends StatelessWidget {
  const _RecentListSkeleton();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        3,
        (_) => Padding(
          padding: const EdgeInsets.only(bottom: 14),
          child: Container(
            height: 104,
            decoration: BoxDecoration(
              color: AppColors.surfaceContainer,
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        ),
      ),
    );
  }
}
