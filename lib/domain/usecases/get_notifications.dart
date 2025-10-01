import 'package:dartz/dartz.dart';
import '../repositories/notification_repository.dart';
import '../entities/laundry_notification.dart';
import '../../core/failure.dart';

class GetNotifications {
  final NotificationRepository repository;
  GetNotifications(this.repository);

  Future<Either<Failure, List<LaundryNotification>>> call({
    required String userId,
  }) {
    return repository.getNotifications(userId: userId);
  }
}
