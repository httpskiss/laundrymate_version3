import 'package:dartz/dartz.dart';
import '../repositories/user_repository.dart';
import '../entities/user.dart';
import '../../core/failure.dart';

class RegisterUser {
  final UserRepository repository;
  RegisterUser(this.repository);

  Future<Either<Failure, User>> call({
    required String name,
    required String email,
    required String password,
    required UserRole role,
    required String householdType,
    required int laundryFrequency,
  }) {
    return repository.registerUser(
      name: name,
      email: email,
      password: password,
      role: role,
      householdType: householdType,
      laundryFrequency: laundryFrequency,
    );
  }
}
