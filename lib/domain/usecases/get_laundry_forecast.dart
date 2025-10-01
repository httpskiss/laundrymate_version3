import 'package:dartz/dartz.dart';
import '../repositories/laundry_forecast_repository.dart';
import '../entities/laundry_forecast.dart';
import '../../core/failure.dart';

class GetLaundryForecast {
  final LaundryForecastRepository repository;
  GetLaundryForecast(this.repository);

  Future<Either<Failure, LaundryForecast>> call({
    required String location,
    required String fabricType,
    required Map<String, dynamic> preferences,
    bool useOfflineData = false,
  }) {
    return repository.getLaundryForecast(
      location: location,
      fabricType: fabricType,
      preferences: preferences,
      useOfflineData: useOfflineData,
    );
  }
}
