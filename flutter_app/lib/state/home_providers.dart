import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/open_food_facts_data_source.dart';
import '../data/product_repository.dart';
import '../models/product.dart';
import 'scan_history_controller.dart';

final openFoodFactsDataSourceProvider = Provider<OpenFoodFactsDataSource>((
  ref,
) {
  return OpenFoodFactsDataSource();
});

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  return ProductRepository(ref.read(openFoodFactsDataSourceProvider));
});

final scanHistoryProvider =
    AsyncNotifierProvider<ScanHistoryController, List<Product>>(
      ScanHistoryController.new,
    );
