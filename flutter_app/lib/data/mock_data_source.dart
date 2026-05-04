import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/product.dart';
import '../models/weekly_vitality.dart';

class MockDataSource {
  Future<Map<String, dynamic>> _loadJson() async {
    final raw = await rootBundle.loadString('assets/data/products.json');
    return jsonDecode(raw) as Map<String, dynamic>;
  }

  Future<List<Product>> loadProducts() async {
    final json = await _loadJson();
    final items = json['products'] as List<dynamic>;
    return items
        .map((item) => Product.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  Future<WeeklyVitality> loadWeeklyVitality() async {
    final json = await _loadJson();
    return WeeklyVitality.fromJson(
      json['weeklyVitality'] as Map<String, dynamic>,
    );
  }
}
