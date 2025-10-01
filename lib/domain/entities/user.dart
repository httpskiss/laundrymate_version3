import 'package:equatable/equatable.dart';

enum UserRole { client, admin }

class User extends Equatable {
  final String id;
  final String name;
  final String email;
  final UserRole role;
  final String householdType;
  final int laundryFrequency;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.householdType,
    required this.laundryFrequency,
  });

  @override
  List<Object?> get props => [id, name, email, role, householdType, laundryFrequency];
}
