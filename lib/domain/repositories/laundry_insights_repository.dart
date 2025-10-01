import 'package:dartz/dartz.dart';
import '../../core/failure.dart';
import '../entities/laundry_history.dart';
import '../entities/eco_tip.dart';
import '../entities/badge.dart';
import '../entities/streak.dart';
import '../entities/weather_data_source.dart';

abstract class LaundryInsightsRepository {
  Future<Either<Failure, List<LaundryHistory>>> getLaundryHistory({
    required String userId,
  });

  Future<Either<Failure, List<EcoTip>>> getEcoTips();

  Future<Either<Failure, List<Badge>>> getUserBadges({
    required String userId,
  });

  Future<Either<Failure, Streak>> getUserStreak({
    required String userId,
  });

  Future<Either<Failure, List<WeatherDataSource>>> getWeatherDataSources();
}
