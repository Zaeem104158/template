import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_ticket_message_create_request.freezed.dart';
part 'support_ticket_message_create_request.g.dart';

@freezed
class SupportTicketMessageCreateRequest with _$SupportTicketMessageCreateRequest {
  const factory SupportTicketMessageCreateRequest({
    final String? name,
    final String? type,
    final String? email,
    final String? text,
    final int? ticketId,
    @Default([]) List<int> fileIds,
  }) = _SupportTicketMessageCreateRequest;

  factory SupportTicketMessageCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketMessageCreateRequestFromJson(json);
}
