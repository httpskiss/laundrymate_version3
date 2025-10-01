import 'package:dartz/dartz.dart';
import '../../core/failure.dart';
import '../entities/user.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> registerUser({
    required String name,
    required String email,
    required String password,
    required UserRole role,
    required String householdType,
    required int laundryFrequency,
  });

  Future<Either<Failure, User>> loginUser({
    required String email,
    required String password,
  });

  Future<Either<Failure, User>> getUserProfile(String userId);

  Future<Either<Failure, User>> updateUserProfile(User user);
}
