import 'package:equatable/equatable.dart';

class BestTimeSlot extends Equatable {
  final DateTime startTime;
  final DateTime endTime;
  final String description;

  const BestTimeSlot({
    required this.startTime,
    required this.endTime,
    required this.description,
  });

  @override
  List<Object?> get props => [startTime, endTime, description];
}
