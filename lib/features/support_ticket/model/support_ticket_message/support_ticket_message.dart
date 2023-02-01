import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/app/model/db_file/db_file.dart';
import 'package:thrive_mobile_app/app/model/user/user.dart';

part 'support_ticket_message.freezed.dart';
part 'support_ticket_message.g.dart';

@freezed
class SupportTicketMessage with _$SupportTicketMessage {
  const factory SupportTicketMessage({
    required final int id,
    final String? text,
    final int? ticketId,
    final User? messageFrom,
    @Default(0) final double creationDate,
    @Default([]) List<DbFile> attachments,
  }) = _SupportTicketMessage;

  factory SupportTicketMessage.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketMessageFromJson(json);
}

List<SupportTicketMessage> convertToSupportTicketMessageData(List<dynamic> datas) {
  return datas.map((e) => e as SupportTicketMessage).toList();
}
