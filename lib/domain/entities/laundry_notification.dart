import 'package:equatable/equatable.dart';

enum NotificationType {
  rainAlert,
  bestTimeAlert,
  smartReminder,
  seasonalAdvisory,
}

enum NotificationChannel {
  push,
  voice,
  vibration,
}

class LaundryNotification extends Equatable {
  final String id;
  final NotificationType type;
  final String title;
  final String message;
  final DateTime scheduledTime;
  final List<NotificationChannel> channels;
  final bool isRead;

  const LaundryNotification({
    required this.id,
    required this.type,
    required this.title,
    required this.message,
    required this.scheduledTime,
    required this.channels,
    this.isRead = false,
  });

  @override
  List<Object?> get props => [id, type, title, message, scheduledTime, channels, isRead];
}
