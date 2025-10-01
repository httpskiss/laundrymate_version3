import 'package:dartz/dartz.dart';
import '../repositories/community_repository.dart';
import '../entities/seasonal_challenge.dart';
import '../../core/failure.dart';

class GetSeasonalChallenges {
  final CommunityRepository repository;
  GetSeasonalChallenges(this.repository);

  Future<Either<Failure, List<SeasonalChallenge>>> call() {
    return repository.getSeasonalChallenges();
  }
}
