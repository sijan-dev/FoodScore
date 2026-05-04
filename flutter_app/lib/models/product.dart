import 'nutrition_facts.dart';

class Product {
  const Product({
    required this.id,
    required this.name,
    required this.subtitle,
    required this.imageUrl,
    required this.score,
    required this.barcode,
    required this.nutrition,
  });

  final String id;
  final String name;
  final String subtitle;
  final String imageUrl;
  final int score;
  final String barcode;
  final NutritionFacts nutrition;

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as String,
      name: json['name'] as String,
      subtitle: json['subtitle'] as String,
      imageUrl: json['imageUrl'] as String,
      score: json['score'] as int,
      barcode: json['barcode'] as String,
      nutrition: NutritionFacts.fromJson(
        json['nutrition'] as Map<String, dynamic>,
      ),
    );
  }
}
