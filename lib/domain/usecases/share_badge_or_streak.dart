import 'package:dartz/dartz.dart';
import '../repositories/community_repository.dart';
import '../../core/failure.dart';

class ShareBadgeOrStreak {
  final CommunityRepository repository;
  ShareBadgeOrStreak(this.repository);

  Future<Either<Failure, void>> call({
    required String userId,
    required String badgeOrStreakId,
    required String type, // 'badge' or 'streak'
  }) {
    return repository.shareBadgeOrStreak(
      userId: userId,
      badgeOrStreakId: badgeOrStreakId,
      type: type,
    );
  }
}
