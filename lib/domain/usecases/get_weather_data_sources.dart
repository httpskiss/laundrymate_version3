import 'package:dartz/dartz.dart';
import '../repositories/laundry_insights_repository.dart';
import '../entities/weather_data_source.dart';
import '../../core/failure.dart';

class GetWeatherDataSources {
  final LaundryInsightsRepository repository;
  GetWeatherDataSources(this.repository);

  Future<Either<Failure, List<WeatherDataSource>>> call() {
    return repository.getWeatherDataSources();
  }
}
