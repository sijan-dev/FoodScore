import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/product.dart';
import '../utils/iterable_extensions.dart';
import 'home_providers.dart';

class ScanHistoryController extends AsyncNotifier<List<Product>> {
  static const _prefsKey = 'scan_history_ids';

  @override
  Future<List<Product>> build() async {
    final products = await ref.read(productsProvider.future);
    final prefs = await SharedPreferences.getInstance();
    final ids = prefs.getStringList(_prefsKey) ?? <String>[];

    return ids
        .map((id) => products.where((item) => item.id == id).toList())
        .expand((matches) => matches)
        .toList();
  }

  Future<void> addScan(Product product) async {
    final current = state.value ?? <Product>[];
    final updated = [
      product,
      ...current.where((item) => item.id != product.id),
    ];
    final capped = updated.take(10).toList();

    state = AsyncValue.data(capped);

    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(
      _prefsKey,
      capped.map((item) => item.id).toList(),
    );
  }

  Future<Product?> addScanByBarcode(String barcode) async {
    final products = await ref.read(productsProvider.future);
    final match = products.where((item) => item.barcode == barcode).firstOrNull;
    if (match == null) {
      return null;
    }
    await addScan(match);
    return match;
  }
}
