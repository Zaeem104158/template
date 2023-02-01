import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/app/model/user/user.dart';

part 'support_ticket.freezed.dart';
part 'support_ticket.g.dart';

@freezed
class SupportTicket with _$SupportTicket {
  const factory SupportTicket({
    required final int id,
    final User? user,
    final String? title,
    final String? appId,
    final String? description,
    final String? ticketStatus,
    @Default(0) final double creationDate,
  }) = _SupportTicket;

  factory SupportTicket.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketFromJson(json);
}

List<SupportTicket> convertToSupportTicketData(List<dynamic> datas) {
  return datas.map((e) => e as SupportTicket).toList();
}
