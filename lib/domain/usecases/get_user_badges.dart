import 'package:dartz/dartz.dart';
import '../repositories/laundry_insights_repository.dart';
import '../entities/badge.dart';
import '../../core/failure.dart';

class GetUserBadges {
  final LaundryInsightsRepository repository;
  GetUserBadges(this.repository);

  Future<Either<Failure, List<Badge>>> call({
    required String userId,
  }) {
    return repository.getUserBadges(userId: userId);
  }
}
