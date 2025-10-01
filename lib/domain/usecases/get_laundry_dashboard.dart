import 'package:dartz/dartz.dart';
import '../repositories/laundry_dashboard_repository.dart';
import '../entities/laundry_dashboard.dart';
import '../../core/failure.dart';

class GetLaundryDashboard {
  final LaundryDashboardRepository repository;
  GetLaundryDashboard(this.repository);

  Future<Either<Failure, LaundryDashboard>> call({
    required String location,
    required String fabricType,
    required Map<String, dynamic> preferences,
  }) {
    return repository.getLaundryDashboard(
      location: location,
      fabricType: fabricType,
      preferences: preferences,
    );
  }
}
