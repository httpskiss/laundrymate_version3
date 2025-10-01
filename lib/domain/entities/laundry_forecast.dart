import 'package:equatable/equatable.dart';

enum DryingCondition { excellent, good, fair, poor }

class HourlyForecast extends Equatable {
  final DateTime time;
  final double temperature;
  final double humidity;
  final double windSpeed;
  final DryingCondition dryingCondition;
  final String advice;

  const HourlyForecast({
    required this.time,
    required this.temperature,
    required this.humidity,
    required this.windSpeed,
    required this.dryingCondition,
    required this.advice,
  });

  @override
  List<Object?> get props => [time, temperature, humidity, windSpeed, dryingCondition, advice];
}

class DailyForecast extends Equatable {
  final DateTime date;
  final DryingCondition dryingCondition;
  final String advice;

  const DailyForecast({
    required this.date,
    required this.dryingCondition,
    required this.advice,
  });

  @override
  List<Object?> get props => [date, dryingCondition, advice];
}

class LaundryForecast extends Equatable {
  final List<HourlyForecast> hourlyForecasts;
  final List<DailyForecast> dailyForecasts;
  final DateTime lastUpdated;

  const LaundryForecast({
    required this.hourlyForecasts,
    required this.dailyForecasts,
    required this.lastUpdated,
  });

  @override
  List<Object?> get props => [hourlyForecasts, dailyForecasts, lastUpdated];
}
