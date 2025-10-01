import 'package:dartz/dartz.dart';
import '../repositories/laundry_forecast_repository.dart';
import '../entities/drying_time_estimate.dart';
import '../../core/failure.dart';

class EstimateDryingTime {
  final LaundryForecastRepository repository;
  EstimateDryingTime(this.repository);

  Future<Either<Failure, DryingTimeEstimate>> call({
    required String fabricType,
    required Map<String, dynamic> weatherData,
  }) {
    return repository.estimateDryingTime(
      fabricType: fabricType,
      weatherData: weatherData,
    );
  }
}
