import 'package:equatable/equatable.dart';

class Badge extends Equatable {
  final String id;
  final String name;
  final String description;
  final DateTime? dateEarned;

  const Badge({
    required this.id,
    required this.name,
    required this.description,
    this.dateEarned,
  });

  @override
  List<Object?> get props => [id, name, description, dateEarned];
}
