import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/notification/notification_data.dart';

part 'notification_state.freezed.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    @Default([]) List<NotificationData> notifications,
    @Default(false) bool isLoading,
    @Default(false) bool isFetchingNext,
    @Default(false) bool isLastPage,
    @Default(0) int pageNo,
    String? error,
  }) = _NotificationState;
}
