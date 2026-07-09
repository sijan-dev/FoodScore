class NutritionFacts {
  const NutritionFacts({
    required this.energyKcal,
    required this.sugarG,
    required this.fiberG,
    this.fatG = 0,
    this.saturatedFatG = 0,
    this.proteinG = 0,
    this.sodiumG = 0,
  });

  final int energyKcal;
  final int sugarG;
  final int fiberG;
  final int fatG;
  final int saturatedFatG;
  final int proteinG;
  final int sodiumG;

  factory NutritionFacts.fromJson(Map<String, dynamic> json) {
    return NutritionFacts(
      energyKcal: json['energyKcal'] as int,
      sugarG: json['sugarG'] as int,
      fiberG: json['fiberG'] as int,
      fatG: json['fatG'] as int? ?? 0,
      saturatedFatG: json['saturatedFatG'] as int? ?? 0,
      proteinG: json['proteinG'] as int? ?? 0,
      sodiumG: json['sodiumG'] as int? ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'energyKcal': energyKcal,
      'sugarG': sugarG,
      'fiberG': fiberG,
      'fatG': fatG,
      'saturatedFatG': saturatedFatG,
      'proteinG': proteinG,
      'sodiumG': sodiumG,
    };
  }
}
