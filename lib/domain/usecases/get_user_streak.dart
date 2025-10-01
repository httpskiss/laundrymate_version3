import 'package:dartz/dartz.dart';
import '../repositories/laundry_insights_repository.dart';
import '../entities/streak.dart';
import '../../core/failure.dart';

class GetUserStreak {
  final LaundryInsightsRepository repository;
  GetUserStreak(this.repository);

  Future<Either<Failure, Streak>> call({
    required String userId,
  }) {
    return repository.getUserStreak(userId: userId);
  }
}
