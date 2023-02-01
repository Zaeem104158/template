import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../app/model/user/user.dart';

part 'notification_data.freezed.dart';
part 'notification_data.g.dart';

@freezed
class NotificationData with _$NotificationData {
  const factory NotificationData({
    required final int id,
    final User? recipient,
    @Default("") final String message,
    @Default("") final String type,
    final int? typeId,
    final bool? read,
    final User? sender,
    @Default(0) double creationDateTimeStamp,
  }) = _NotificationData;

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataFromJson(json);
}

List<NotificationData> convertToNotificationDatas(List<dynamic> datas) {
  return datas.map((e) => e as NotificationData).toList();
}
