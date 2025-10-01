import 'package:equatable/equatable.dart';

class CommunityTip extends Equatable {
  final String id;
  final String userId;
  final String tip;
  final DateTime dateShared;

  const CommunityTip({
    required this.id,
    required this.userId,
    required this.tip,
    required this.dateShared,
  });

  @override
  List<Object?> get props => [id, userId, tip, dateShared];
}
