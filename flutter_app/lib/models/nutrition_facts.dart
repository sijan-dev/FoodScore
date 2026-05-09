class NutritionFacts {
  const NutritionFacts({
    required this.energyKcal,
    required this.sugarG,
    required this.fiberG,
    required this.fatG,
  });

  final int energyKcal;
  final int sugarG;
  final int fiberG;
  final int fatG;

  factory NutritionFacts.fromJson(Map<String, dynamic> json) {
    return NutritionFacts(
      energyKcal: json['energyKcal'] as int,
      sugarG: json['sugarG'] as int,
      fiberG: json['fiberG'] as int,
      fatG: json['fatG'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'energyKcal': energyKcal,
      'sugarG': sugarG,
      'fiberG': fiberG,
      'fatG': fatG,
    };
  }
}
