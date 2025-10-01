import 'package:dartz/dartz.dart';
import '../repositories/community_repository.dart';
import '../../core/failure.dart';

class JoinSeasonalChallenge {
  final CommunityRepository repository;
  JoinSeasonalChallenge(this.repository);

  Future<Either<Failure, void>> call({
    required String challengeId,
    required String userId,
  }) {
    return repository.joinSeasonalChallenge(
      challengeId: challengeId,
      userId: userId,
    );
  }
}
