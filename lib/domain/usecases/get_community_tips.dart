import 'package:dartz/dartz.dart';
import '../repositories/community_repository.dart';
import '../entities/community_tip.dart';
import '../../core/failure.dart';

class GetCommunityTips {
  final CommunityRepository repository;
  GetCommunityTips(this.repository);

  Future<Either<Failure, List<CommunityTip>>> call() {
    return repository.getCommunityTips();
  }
}
