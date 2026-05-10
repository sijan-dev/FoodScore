import '../models/product.dart';
import 'open_food_facts_data_source.dart';

class ProductRepository {
  ProductRepository(this._dataSource);

  final OpenFoodFactsDataSource _dataSource;

  Future<Product?> fetchProductByBarcode(String barcode) {
    return _dataSource.fetchProductByBarcode(barcode);
  }

  Future<List<Product>> searchProducts(String query, {int limit = 12}) {
    return _dataSource.searchProducts(query, limit: limit);
  }
}
