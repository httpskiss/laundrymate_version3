import 'package:equatable/equatable.dart';

class SeasonalChallenge extends Equatable {
  final String id;
  final String title;
  final String description;
  final DateTime startDate;
  final DateTime endDate;
  final List<String> participants;

  const SeasonalChallenge({
    required this.id,
    required this.title,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.participants,
  });

  @override
  List<Object?> get props => [id, title, description, startDate, endDate, participants];
}
