import 'package:equatable/equatable.dart';

class EcoTip extends Equatable {
  final String id;
  final String tip;
  final String? source;

  const EcoTip({
    required this.id,
    required this.tip,
    this.source,
  });

  @override
  List<Object?> get props => [id, tip, source];
}
