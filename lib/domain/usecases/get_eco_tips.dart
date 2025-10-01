import 'package:dartz/dartz.dart';
import '../repositories/laundry_insights_repository.dart';
import '../entities/eco_tip.dart';
import '../../core/failure.dart';

class GetEcoTips {
  final LaundryInsightsRepository repository;
  GetEcoTips(this.repository);

  Future<Either<Failure, List<EcoTip>>> call() {
    return repository.getEcoTips();
  }
}
