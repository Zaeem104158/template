import 'package:freezed_annotation/freezed_annotation.dart';
import '../notification/notification_data.dart';

part 'notification_response.freezed.dart';
part 'notification_response.g.dart';

@freezed
class NotificationResponse with _$NotificationResponse {
  const factory NotificationResponse({
    dynamic success,
    final String? status,
    final String? message,
    required final NotificationPayload payload,
  }) = _NotificationResponse;

  factory NotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseFromJson(json);
}

@freezed
class NotificationPayload with _$NotificationPayload {
  const factory NotificationPayload({
    @Default([]) List<NotificationData> content,
    required final int totalPages,
    required final int totalElements,
    required final int numberOfElements,
    required final bool last,
    required final bool first,
    required final bool empty,
  }) = _NotificationPayload;

  factory NotificationPayload.fromJson(Map<String, dynamic> json) =>
      _$NotificationPayloadFromJson(json);
}
