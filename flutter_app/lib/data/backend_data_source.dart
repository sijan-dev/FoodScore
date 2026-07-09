import 'dart:convert';

import 'package:http/http.dart' as http;

import '../app/app_config.dart';
import '../models/additive_flag.dart';
import '../models/nutrition_facts.dart';
import '../models/product.dart';

String offCdnImageUrl(String barcode) {
  final bc = barcode.trim();
  if (bc.length < 8) return '';
  String p1, p2, p3;
  if (bc.length == 8) {
    p1 = bc.substring(0, 3);
    p2 = bc.substring(3, 6);
    p3 = bc.substring(6);
  } else {
    p1 = bc.substring(0, 3);
    p2 = bc.substring(3, 7);
    p3 = bc.substring(7);
  }
  return 'https://images.openfoodfacts.org/images/products/$p1/$p2/$p3/front.en.400.jpg';
}

class BackendDataSource {
  BackendDataSource({http.Client? client}) : _client = client ?? http.Client();

  final http.Client _client;

  Future<Product?> fetchProductByBarcode(String barcode) async {
    try {
      final uri = Uri.parse('${AppConfig.apiBaseUrl}/products/scan/$barcode');
      final response = await _client.get(uri);
      if (response.statusCode != 200) {
        return null;
      }

      final payload = jsonDecode(response.body) as Map<String, dynamic>;
      if (payload['product_id'] == null) {
        return null;
      }

      return _mapBackendProduct(payload);
    } catch (_) {
      return null;
    }
  }

  Future<List<Product>> searchProducts(String query, {int limit = 12}) async {
    try {
      final uri = Uri.parse(
        '${AppConfig.apiBaseUrl}/search',
      ).replace(queryParameters: <String, String>{'q': query, 'limit': '$limit'});

      final response = await _client.get(uri);
      if (response.statusCode != 200) {
        return <Product>[];
      }

      final items = jsonDecode(response.body) as List<dynamic>;
      return items
          .whereType<Map<String, dynamic>>()
          .map(_mapSearchResult)
          .toList();
    } catch (_) {
      return <Product>[];
    }
  }

  Product _mapSearchResult(Map<String, dynamic> json) {
    final barcode = json['barcode'] as String? ?? '';
    final imageUrl = json['image_url'] as String? ?? '';
    return Product(
      id: json['product_id'] as String? ?? '',
      name: json['name'] as String? ?? 'Unknown Product',
      subtitle: json['brand'] as String? ?? 'Unknown Brand',
      imageUrl: imageUrl.isNotEmpty ? imageUrl : offCdnImageUrl(barcode),
      score: (json['health_score'] as num?)?.toInt() ?? 0,
      nutriScore: (json['nutri_score'] as String?)?.toUpperCase() ?? 'C',
      novaGroup: (json['nova_group'] as num?)?.toInt() ?? 3,
      ecoScore: (json['eco_score'] as String?)?.toUpperCase() ?? 'C',
      insights: ['Score reflects overall nutritional balance and processing.'],
      barcode: barcode,
      nutrition: const NutritionFacts(
        energyKcal: 0,
        sugarG: 0,
        fiberG: 0,
      ),
      category: json['category'] as String?,
      additives: const [],
      flaggedIngredients: const [],
      isHarmful: json['is_harmful'] as bool? ?? false,
      trafficLabel: null,
      source: null,
    );
  }

  Product _mapBackendProduct(Map<String, dynamic> json) {
    final nutriments =
        json['nutriments'] as Map<String, dynamic>? ??
        const <String, dynamic>{};

    final nutrition = NutritionFacts(
      energyKcal: _numToInt(
        nutriments['energy-kcal_100g'] ?? nutriments['energy_kcal_100g'],
      ),
      sugarG: _numToInt(nutriments['sugars_100g']),
      fiberG: _numToInt(nutriments['fiber_100g']),
      saturatedFatG: _numToInt(nutriments['saturated_fat_100g'] ?? nutriments['saturated-fat_100g']),
      proteinG: _numToInt(nutriments['proteins_100g']),
      sodiumG: _numToInt(nutriments['salt_100g'] ?? nutriments['sodium_100g']),
    );

    final flagsRaw =
        json['flagged_ingredients'] as List<dynamic>? ?? const <dynamic>[];
    final flags = flagsRaw
        .whereType<Map<String, dynamic>>()
        .map(AdditiveFlag.fromJson)
        .toList();

    final barcode = json['barcode'] as String? ?? '';
    final imageUrl = json['image_url'] as String? ?? '';
    return Product(
      id: json['product_id'] as String? ?? '',
      name: json['name'] as String? ?? 'Unknown Product',
      subtitle: json['brand'] as String? ?? 'Unknown Brand',
      imageUrl: imageUrl.isNotEmpty ? imageUrl : offCdnImageUrl(barcode),
      score: (json['health_score'] as num?)?.toInt() ?? 0,
      nutriScore: (json['nutri_score'] as String?)?.toUpperCase() ?? 'C',
      novaGroup: (json['nova_group'] as num?)?.toInt() ?? 3,
      ecoScore: (json['eco_score'] as String?)?.toUpperCase() ?? 'C',
      insights: _buildInsights(json['suggestion'] as String?, flags, nutrition),
      barcode: barcode,
      nutrition: nutrition,
      category: json['category'] as String?,
      additives: _stringList(json['additives']),
      flaggedIngredients: flags,
      isHarmful: json['is_harmful'] as bool? ?? false,
      trafficLabel:
          (json['traffic_light'] as Map<String, dynamic>?)?['label'] as String?,
      source: json['source'] as String?,
    );
  }

  Future<Product?> fetchProductById(String productId) async {
    try {
      final uri = Uri.parse('${AppConfig.apiBaseUrl}/products/$productId');
      final response = await _client.get(uri);
      if (response.statusCode != 200) return null;
      final payload = jsonDecode(response.body) as Map<String, dynamic>;
      if (payload['product_id'] == null) return null;
      return _mapBackendProduct(payload);
    } catch (_) {
      return null;
    }
  }

  Future<Map<String, List<Product>>> fetchSimilarProducts(String productId) async {
    try {
      final uri = Uri.parse(
          '${AppConfig.apiBaseUrl}/products/$productId/alternatives');
      final response = await _client.get(uri);
      if (response.statusCode != 200) return {"similar": [], "healthier": []};
      final data = jsonDecode(response.body) as Map<String, dynamic>;

      List<Product> mapList(String key) {
        final items = data[key] as List<dynamic>? ?? [];
        return items.whereType<Map<String, dynamic>>().map((item) {
          final bc = item['barcode'] as String? ?? '';
          final img = item['image_url'] as String? ?? '';
          return Product(
            id: item['product_id']?.toString() ?? '',
            name: item['name'] as String? ?? 'Unknown',
            subtitle: item['brand'] as String? ?? '',
            imageUrl: img.isNotEmpty ? img : offCdnImageUrl(bc),
            score: (item['health_score'] as num?)?.toInt() ?? 0,
            nutriScore: (item['nutri_score'] as String?)?.toUpperCase() ?? 'C',
            novaGroup: (item['nova_group'] as num?)?.toInt() ?? 3,
            ecoScore: (item['eco_score'] as String?)?.toUpperCase() ?? 'C',
            insights: [],
            barcode: item['barcode'] as String? ?? '',
            nutrition: const NutritionFacts(
              energyKcal: 0,
              sugarG: 0,
              fiberG: 0,
            ),
            category: item['category'] as String?,
            additives: const [],
            flaggedIngredients: const [],
            isHarmful: item['is_harmful'] as bool? ?? false,
          );
        }).toList();
      }

      return {
        "similar": mapList("similar"),
        "healthier": mapList("healthier"),
      };
    } catch (_) {
      return {"similar": [], "healthier": []};
    }
  }

  List<String> _stringList(dynamic input) {
    if (input is List) {
      return input.map((item) => item.toString()).toList();
    }
    return <String>[];
  }

  int _numToInt(dynamic value) {
    if (value is num) {
      return value.round();
    }
    return 0;
  }

  List<String> _buildInsights(
    String? suggestion,
    List<AdditiveFlag> flags,
    NutritionFacts nutrition,
  ) {
    final insights = <String>[];

    if (suggestion != null && suggestion.trim().isNotEmpty) {
      insights.add(suggestion.trim());
    }

    if (flags.isNotEmpty) {
      final highRisk = flags.where((flag) => flag.riskTier != 'low').length;
      insights.add(
        'Detected $highRisk additives with elevated risk tiers to review.',
      );
    }

    if (nutrition.sugarG >= 20) {
      insights.add(
        'High sugar density per 100g, moderate serving recommended.',
      );
    } else if (nutrition.sugarG <= 5) {
      insights.add('Low sugar content for this product category.');
    }

    if (nutrition.fiberG >= 5) {
      insights.add('Fiber content supports satiety and digestive health.');
    }

    if (insights.isEmpty) {
      insights.add(
        'Score reflects overall nutritional balance and processing.',
      );
    }

    return insights.take(3).toList();
  }
}
