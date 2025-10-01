import 'package:equatable/equatable.dart';

class DryingTimeEstimate extends Equatable {
  final String fabricType;
  final double estimatedHours;
  final String advice;

  const DryingTimeEstimate({
    required this.fabricType,
    required this.estimatedHours,
    required this.advice,
  });

  @override
  List<Object?> get props => [fabricType, estimatedHours, advice];
}
