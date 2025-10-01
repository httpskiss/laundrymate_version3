import 'package:dartz/dartz.dart';
import '../repositories/user_repository.dart';
import '../entities/user.dart';
import '../../core/failure.dart';

class UpdateUserProfile {
  final UserRepository repository;
  UpdateUserProfile(this.repository);

  Future<Either<Failure, User>> call(User user) {
    return repository.updateUserProfile(user);
  }
}
  