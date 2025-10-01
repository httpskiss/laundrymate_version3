import 'package:dartz/dartz.dart';
import '../repositories/community_repository.dart';
import '../../core/failure.dart';

class ShareCommunityTip {
  final CommunityRepository repository;
  ShareCommunityTip(this.repository);

  Future<Either<Failure, void>> call({
    required String userId,
    required String tip,
  }) {
    return repository.shareCommunityTip(userId: userId, tip: tip);
  }
}
