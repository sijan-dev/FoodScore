import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/mock_data_source.dart';
import '../data/product_repository.dart';
import '../models/product.dart';
import '../models/weekly_vitality.dart';
import 'scan_history_controller.dart';

final mockDataSourceProvider = Provider<MockDataSource>((ref) {
  return MockDataSource();
});

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  return ProductRepository(ref.read(mockDataSourceProvider));
});

final productsProvider = FutureProvider<List<Product>>((ref) async {
  return ref.read(productRepositoryProvider).fetchProducts();
});

final weeklyVitalityProvider = FutureProvider<WeeklyVitality>((ref) async {
  return ref.read(productRepositoryProvider).fetchWeeklyVitality();
});

final scanHistoryProvider =
    AsyncNotifierProvider<ScanHistoryController, List<Product>>(
      ScanHistoryController.new,
    );
