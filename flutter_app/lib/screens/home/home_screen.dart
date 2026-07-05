import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../app/navigation/app_router.dart';
import '../../app/tokens.dart';
import '../../models/product.dart';
import '../../models/scan_record.dart';
import '../../providers/auth_provider.dart';
import '../../providers/scan_history_provider.dart';
import '../../services/search_service.dart';
import '../contribution/contribute_barcode_upload_screen.dart';
import '../placeholders/settings_screen.dart';
import '../product/product_detail_screen.dart';
import '../scanner/scanner_screen.dart';
import '../search/search_results_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  List<Product> _searchResults = [];
  bool _isSearching = false;
  String _searchError = '';
  String _lastQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  Future<void> _startScan() async {
    if (await Permission.camera.request().isGranted) {
      if (!mounted) return;
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (_) => const ScannerScreen()));
    }
  }

  Future<void> _performSearch(String query) async {
    if (query.trim().isEmpty) {
      setState(() {
        _searchResults = [];
        _searchError = '';
      });
      return;
    }

    setState(() {
      _isSearching = true;
      _searchError = '';
      _lastQuery = query.trim();
    });

    try {
      final results = await SearchService().searchProducts(query.trim());
      if (!mounted) return;
      setState(() {
        _searchResults = results;
      });
      if (results.isEmpty) {
        _showContributeSheet(query.trim());
      }
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _searchError = 'Search failed. Try again.';
      });
    } finally {
      if (mounted) {
        setState(() {
          _isSearching = false;
        });
      }
    }
  }

  Future<void> _openProductDetails(Product product) async {
    await ref
        .read(scanHistoryProvider.notifier)
        .addRecord(ScanRecord(product: product, scannedAt: DateTime.now()));
    if (!mounted) return;
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => ProductDetailScreen(product: product)),
    );
  }

  void _showContributeSheet(String query) {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      backgroundColor: context.surfaceContainerLowest,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) => Padding(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'No results for "$query"',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            Text(
              'Help us grow the database by contributing this product.',
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(color: context.onSurfaceVariant),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const ContributeBarcodeUploadScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.add_photo_alternate_outlined),
                label: const Text('Contribute Product'),
                style: FilledButton.styleFrom(
                  backgroundColor: context.primary,
                  foregroundColor: context.onPrimary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final history = ref.watch(scanHistoryProvider);
    final recentScans = history.take(4).toList();
    final authState = ref.watch(authProvider);

    return Scaffold(
      backgroundColor: context.surface,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const ContributeBarcodeUploadScreen(),
            ),
          );
        },
        tooltip: 'Add product',
        backgroundColor: context.primaryContainer,
        foregroundColor: context.onPrimary,
        child: const Icon(Icons.add_rounded),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          children: [
            _HeaderBar(
              avatarUrl: authState.user?.avatarUrl,
              onProfileTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const SettingsScreen()),
                );
              },
            ),
            const SizedBox(height: 16),
            _HeroScanCard(
              controller: _searchController,
              focusNode: _searchFocusNode,
              isSearching: _isSearching,
              onSearch: _performSearch,
              onScan: _startScan,
            ),
            if (_searchError.isNotEmpty) ...[
              const SizedBox(height: 12),
              Text(
                _searchError,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: context.error),
              ),
            ],
            if (_searchResults.isNotEmpty || _isSearching) ...[
              const SizedBox(height: 16),
              _SearchResultsSection(
                isSearching: _isSearching,
                results: _searchResults,
                onSelect: _openProductDetails,
                onViewAll: _searchResults.length > 3
                    ? () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => SearchResultsScreen(
                              query: _lastQuery,
                              results: _searchResults,
                            ),
                          ),
                        );
                      }
                    : null,
                onContribute: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const ContributeBarcodeUploadScreen(),
                    ),
                  );
                },
              ),
            ],
            const SizedBox(height: 20),
            _SectionHeader(
              title: 'Recent Scans',
              actionLabel: 'View All',
              onAction: () {
                AppRouter.goToHistory(ref);
              },
            ),
            const SizedBox(height: 12),
            if (recentScans.isEmpty)
              _EmptyStateCard(
                title: 'Nothing scanned yet',
                subtitle: 'Scan your first product to see scores here.',
                onPressed: _startScan,
              )
            else
              Column(
                children: [
                  for (final record in recentScans)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: _RecentScanCard(
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
              ),
          ],
        ),
      ),
    );
  }
}

class _HeaderBar extends StatelessWidget {
  const _HeaderBar({required this.onProfileTap, this.avatarUrl});

  final VoidCallback onProfileTap;
  final String? avatarUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: context.primaryContainer.withValues(alpha: 0.15),
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/android-chrome-192x192.png',
                    width: 44,
                    height: 44,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                'FoodScore',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: InkWell(
            onTap: onProfileTap,
            borderRadius: BorderRadius.circular(24),
            child: CircleAvatar(
              radius: 22,
              backgroundColor: context.surfaceContainer,
              backgroundImage: avatarUrl != null
                  ? NetworkImage(avatarUrl!)
                  : null,
              child: avatarUrl == null
                  ? Icon(Icons.person_outline, color: context.onSurface)
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}

class _HeroScanCard extends StatelessWidget {
  const _HeroScanCard({
    required this.controller,
    required this.focusNode,
    required this.isSearching,
    required this.onSearch,
    required this.onScan,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isSearching;
  final ValueChanged<String> onSearch;
  final VoidCallback onScan;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: context.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withValues(alpha: 0.12),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Search or scan to get a score',
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: controller,
            focusNode: focusNode,
            textInputAction: TextInputAction.search,
            onSubmitted: onSearch,
            decoration: InputDecoration(
              hintText: 'Search for a product',
              prefixIcon: const Icon(Icons.search),
              suffixIcon: isSearching
                  ? const Padding(
                      padding: EdgeInsets.all(12),
                      child: SizedBox(
                        height: 16,
                        width: 16,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    )
                  : (controller.text.isNotEmpty
                        ? IconButton(
                            onPressed: () {
                              controller.clear();
                              onSearch('');
                            },
                            icon: const Icon(Icons.close),
                          )
                        : null),
              filled: true,
              fillColor: context.surfaceContainer,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(child: Divider(color: context.outlineVariant)),
              const SizedBox(width: 12),
              Text(
                'OR',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: context.onSurfaceVariant,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(child: Divider(color: context.outlineVariant)),
            ],
          ),
          const SizedBox(height: 18),
          Align(
            alignment: Alignment.center,
            child: InkWell(
              onTap: onScan,
              borderRadius: BorderRadius.circular(48),
              child: Container(
                width: 92,
                height: 92,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.primaryContainer,
                  boxShadow: [
                    BoxShadow(
                      color: context.primary.withValues(alpha: 0.4),
                      blurRadius: 20,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.qr_code_scanner,
                  color: context.onPrimary,
                  size: 40,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Scan a Product',
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
          ),
          Text(
            'Point your camera at a barcode',
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: context.onSurfaceVariant),
          ),
        ],
      ),
    );
  }
}

class _SearchResultsSection extends StatelessWidget {
  const _SearchResultsSection({
    required this.isSearching,
    required this.results,
    required this.onSelect,
    this.onViewAll,
    required this.onContribute,
  });

  final bool isSearching;
  final List<Product> results;
  final ValueChanged<Product> onSelect;
  final VoidCallback? onViewAll;
  final VoidCallback onContribute;

  @override
  Widget build(BuildContext context) {
    if (isSearching) {
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: context.surfaceContainerLowest,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(child: CircularProgressIndicator()),
      );
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Results',
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              if (onViewAll != null)
                TextButton(onPressed: onViewAll, child: const Text('View All')),
            ],
          ),
          const SizedBox(height: 8),
          if (results.isEmpty)
            _EmptySearchCard(onContribute: onContribute)
          else
            Column(
              children: [
                for (final product in results.take(3))
                  ListTile(
                    onTap: () => onSelect(product),
                    contentPadding: EdgeInsets.zero,
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        product.imageUrl,
                        width: 52,
                        height: 52,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(
                            color: context.surfaceContainerHighest,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.image_outlined,
                            size: 22,
                            color: context.onSurfaceVariant.withValues(
                              alpha: 0.4,
                            ),
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      product.name,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      product.subtitle,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: context.onSurfaceVariant,
                      ),
                    ),
                    trailing: const Icon(Icons.chevron_right),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}

class _EmptySearchCard extends StatelessWidget {
  const _EmptySearchCard({required this.onContribute});

  final VoidCallback onContribute;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.surfaceContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'No products found.',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 6),
          Text(
            'Add this product to help everyone find it next time.',
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: context.onSurfaceVariant),
          ),
          const SizedBox(height: 12),
          OutlinedButton.icon(
            onPressed: onContribute,
            icon: const Icon(Icons.add_photo_alternate_outlined),
            label: const Text('Contribute Product'),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({
    required this.title,
    required this.actionLabel,
    required this.onAction,
  });

  final String title;
  final String actionLabel;
  final VoidCallback onAction;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
        ),
        const Spacer(),
        TextButton(onPressed: onAction, child: Text(actionLabel)),
      ],
    );
  }
}

class _RecentScanCard extends StatelessWidget {
  const _RecentScanCard({required this.record, required this.onTap});

  final ScanRecord record;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final score = record.product.score;
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
                width: 64,
                height: 64,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color: context.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Icon(
                    Icons.image_outlined,
                    size: 26,
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
                  const SizedBox(height: 4),
                  Text(
                    record.product.category ?? 'General',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: context.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            _ScoreRing(score: score, size: 44),
          ],
        ),
      ),
    );
  }
}

class _EmptyStateCard extends StatelessWidget {
  const _EmptyStateCard({
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });

  final String title;
  final String subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: context.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 6),
          Text(
            subtitle,
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: context.onSurfaceVariant),
          ),
          const SizedBox(height: 12),
          OutlinedButton.icon(
            onPressed: onPressed,
            icon: const Icon(Icons.qr_code_scanner),
            label: const Text('Scan Now'),
          ),
        ],
      ),
    );
  }
}

class _ScoreRing extends StatelessWidget {
  const _ScoreRing({required this.score, this.size = 40});

  final int score;
  final double size;

  @override
  Widget build(BuildContext context) {
    final color = score >= 80
        ? AppColors.good
        : (score >= 50 ? AppColors.moderate : AppColors.error);
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: size,
          height: size,
          child: CircularProgressIndicator(
            value: score / 100,
            strokeWidth: 5,
            backgroundColor: context.surfaceContainerHighest,
            valueColor: AlwaysStoppedAnimation<Color>(color),
          ),
        ),
        Text(
          score.toString(),
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            fontWeight: FontWeight.w700,
            color: context.onSurface,
          ),
        ),
      ],
    );
  }
}
