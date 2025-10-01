import 'package:dartz/dartz.dart';
import '../repositories/notification_repository.dart';
import '../../core/failure.dart';

class MarkNotificationAsRead {
  final NotificationRepository repository;
  MarkNotificationAsRead(this.repository);

  Future<Either<Failure, void>> call({
    required String notificationId,
  }) {
    return repository.markNotificationAsRead(notificationId: notificationId);
  }
}
