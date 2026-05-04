class WeeklyVitality {
  const WeeklyVitality({required this.score, required this.trend});

  final int score;
  final List<int> trend;

  factory WeeklyVitality.fromJson(Map<String, dynamic> json) {
    return WeeklyVitality(
      score: json['score'] as int,
      trend: List<int>.from(json['trend'] as List<dynamic>),
    );
  }
}
