import 'package:dartz/dartz.dart';
import '../../core/failure.dart';
import '../entities/laundry_notification.dart';

abstract class NotificationRepository {
  Future<Either<Failure, List<LaundryNotification>>> getNotifications({
    required String userId,
  });

  Future<Either<Failure, void>> scheduleNotification({
    required LaundryNotification notification,
  });

  Future<Either<Failure, void>> markNotificationAsRead({
    required String notificationId,
  });
}
