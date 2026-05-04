import '../models/product.dart';
import '../models/weekly_vitality.dart';
import 'mock_data_source.dart';

class ProductRepository {
  ProductRepository(this._dataSource);

  final MockDataSource _dataSource;

  Future<List<Product>> fetchProducts() => _dataSource.loadProducts();

  Future<WeeklyVitality> fetchWeeklyVitality() =>
      _dataSource.loadWeeklyVitality();
}
