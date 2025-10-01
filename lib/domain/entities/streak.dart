import 'package:equatable/equatable.dart';

class Streak extends Equatable {
  final String userId;
  final int days;

  const Streak({
    required this.userId,
    required this.days,
  });

  @override
  List<Object?> get props => [userId, days];
}
