import 'package:equatable/equatable.dart';

enum LaundryStatus { success, interrupted }

class LaundryHistory extends Equatable {
  final String id;
  final String userId;
  final DateTime date;
  final LaundryStatus status;
  final String? notes;

  const LaundryHistory({
    required this.id,
    required this.userId,
    required this.date,
    required this.status,
    this.notes,
  });

  @override
  List<Object?> get props => [id, userId, date, status, notes];
}
