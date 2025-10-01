import 'package:dartz/dartz.dart';
import '../repositories/notification_repository.dart';
import '../entities/laundry_notification.dart';
import '../../core/failure.dart';

class ScheduleNotification {
  final NotificationRepository repository;
  ScheduleNotification(this.repository);

  Future<Either<Failure, void>> call({
    required LaundryNotification notification,
  }) {
    return repository.scheduleNotification(notification: notification);
  }
}
