import 'package:dartz/dartz.dart';
import '../../core/failure.dart';
import '../entities/community_tip.dart';
import '../entities/seasonal_challenge.dart';

abstract class CommunityRepository {
  Future<Either<Failure, List<CommunityTip>>> getCommunityTips();
  Future<Either<Failure, void>> shareCommunityTip({
    required String userId,
    required String tip,
  });
  Future<Either<Failure, List<SeasonalChallenge>>> getSeasonalChallenges();
  Future<Either<Failure, void>> joinSeasonalChallenge({
    required String challengeId,
    required String userId,
  });
  Future<Either<Failure, void>> shareBadgeOrStreak({
    required String userId,
    required String badgeOrStreakId,
    required String type, // 'badge' or 'streak'
  });
}
