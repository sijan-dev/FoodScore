import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/product.dart';
import 'home_providers.dart';

class ScanHistoryController extends AsyncNotifier<List<Product>> {
  static const _prefsKey = 'scan_history_products';

  @override
  Future<List<Product>> build() async {
    final prefs = await SharedPreferences.getInstance();
    final rawItems = prefs.getStringList(_prefsKey) ?? <String>[];

    return rawItems
        .map((item) {
          try {
            return Product.fromJson(jsonDecode(item) as Map<String, dynamic>);
          } catch (_) {
            return null;
          }
        })
        .whereType<Product>()
        .toList();
  }

  Future<void> _persist(List<Product> items) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(
      _prefsKey,
      items.map((item) => jsonEncode(item.toJson())).toList(),
    );
  }

  Future<void> addScan(Product product) async {
    final current = state.value ?? <Product>[];
    final updated = [
      product,
      ...current.where((item) => item.id != product.id),
    ];
    final capped = updated.take(20).toList();

    state = AsyncValue.data(capped);
    await _persist(capped);
  }

  Future<Product?> addScanByBarcode(String barcode) async {
    final match = await ref
        .read(productRepositoryProvider)
        .fetchProductByBarcode(barcode);
    if (match == null) {
      return null;
    }
    await addScan(match);
    return match;
  }

  Future<void> clear() async {
    state = const AsyncValue.data(<Product>[]);
    await _persist(const <Product>[]);
  }

  Future<void> removeById(String id) async {
    final current = state.value ?? <Product>[];
    final updated = current.where((item) => item.id != id).toList();
    state = AsyncValue.data(updated);
    await _persist(updated);
  }
}
