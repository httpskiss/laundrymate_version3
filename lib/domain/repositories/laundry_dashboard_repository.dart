import 'package:dartz/dartz.dart';
import '../../core/failure.dart';
import '../entities/laundry_dashboard.dart';

abstract class LaundryDashboardRepository {
  Future<Either<Failure, LaundryDashboard>> getLaundryDashboard({
    required String location,
    required String fabricType,
    required Map<String, dynamic> preferences,
  });
}
