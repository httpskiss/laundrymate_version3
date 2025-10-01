import 'package:equatable/equatable.dart';

enum RecommendationLevel { good, risky, avoid }

class LaundryWeatherRecommendation extends Equatable {
  final RecommendationLevel level;
  final String message;

  const LaundryWeatherRecommendation({
    required this.level,
    required this.message,
  });

  @override
  List<Object?> get props => [level, message];
}
