import 'package:equatable/equatable.dart';
import 'laundry_weather_recommendation.dart';
import 'best_time_slot.dart';

class LaundryDashboard extends Equatable {
  final LaundryWeatherRecommendation todayRecommendation;
  final List<BestTimeSlot> bestTimeSlots;
  final LaundryWeatherRecommendation tomorrowOutlook;
  final String location;
  final String fabricType;
  final Map<String, dynamic> preferences;

  const LaundryDashboard({
    required this.todayRecommendation,
    required this.bestTimeSlots,
    required this.tomorrowOutlook,
    required this.location,
    required this.fabricType,
    required this.preferences,
  });

  @override
  List<Object?> get props => [todayRecommendation, bestTimeSlots, tomorrowOutlook, location, fabricType, preferences];
}
