import 'package:dartz/dartz.dart';
import '../repositories/laundry_insights_repository.dart';
import '../entities/laundry_history.dart';
import '../../core/failure.dart';

class GetLaundryHistory {
  final LaundryInsightsRepository repository;
  GetLaundryHistory(this.repository);

  Future<Either<Failure, List<LaundryHistory>>> call({
    required String userId,
  }) {
    return repository.getLaundryHistory(userId: userId);
  }
}
