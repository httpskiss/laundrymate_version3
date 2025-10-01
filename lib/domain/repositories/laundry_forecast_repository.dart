import 'package:dartz/dartz.dart';
import '../../core/failure.dart';
import '../entities/laundry_forecast.dart';
import '../entities/drying_time_estimate.dart';

abstract class LaundryForecastRepository {
  Future<Either<Failure, LaundryForecast>> getLaundryForecast({
    required String location,
    required String fabricType,
    required Map<String, dynamic> preferences,
    bool useOfflineData = false,
  });

  Future<Either<Failure, DryingTimeEstimate>> estimateDryingTime({
    required String fabricType,
    required Map<String, dynamic> weatherData,
  });
}
