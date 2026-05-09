import 'nutrition_facts.dart';

class Product {
  const Product({
    required this.id,
    required this.name,
    required this.subtitle,
    required this.imageUrl,
    required this.score,
    required this.nutriScore,
    required this.novaGroup,
    required this.ecoScore,
    required this.insights,
    required this.barcode,
    required this.nutrition,
  });

  final String id;
  final String name;
  final String subtitle;
  final String imageUrl;
  final int score;
  final String nutriScore;
  final int novaGroup;
  final String ecoScore;
  final List<String> insights;
  final String barcode;
  final NutritionFacts nutrition;

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as String,
      name: json['name'] as String,
      subtitle: json['subtitle'] as String,
      imageUrl: json['imageUrl'] as String,
      score: json['score'] as int,
      nutriScore: json['nutriScore'] as String,
      novaGroup: json['novaGroup'] as int,
      ecoScore: json['ecoScore'] as String,
      insights: List<String>.from(json['insights'] as List<dynamic>),
      barcode: json['barcode'] as String,
      nutrition: NutritionFacts.fromJson(
        json['nutrition'] as Map<String, dynamic>,
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'subtitle': subtitle,
      'imageUrl': imageUrl,
      'score': score,
      'nutriScore': nutriScore,
      'novaGroup': novaGroup,
      'ecoScore': ecoScore,
      'insights': insights,
      'barcode': barcode,
      'nutrition': nutrition.toJson(),
    };
  }
}
