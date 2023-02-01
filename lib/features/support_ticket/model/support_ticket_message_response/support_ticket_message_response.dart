import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/features/support_ticket/model/support_ticket_message/support_ticket_message.dart';

part 'support_ticket_message_response.freezed.dart';
part 'support_ticket_message_response.g.dart';

@freezed
class SupportTicketMessageResponse with _$SupportTicketMessageResponse {
  const factory SupportTicketMessageResponse({
    dynamic success,
    final String? status,
    final String? message,
    required final SupportTicketMesagePayload payload,
  }) = _SupportTicketMessageResponse;

  factory SupportTicketMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketMessageResponseFromJson(json);
}

@freezed
class SupportTicketMesagePayload with _$SupportTicketMesagePayload {
  const factory SupportTicketMesagePayload({
    @Default([]) List<SupportTicketMessage> content,
    required final int totalPages,
    required final int totalElements,
    required final int numberOfElements,
    required final bool last,
    required final bool first,
    required final bool empty,
  }) = _SupportTicketMesagePayload;

  factory SupportTicketMesagePayload.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketMesagePayloadFromJson(json);
}
