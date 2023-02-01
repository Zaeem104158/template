import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/features/support_ticket/model/support_ticket/support_ticket.dart';

part 'support_ticket_response.freezed.dart';
part 'support_ticket_response.g.dart';

@freezed
class SupportTicketResponse with _$SupportTicketResponse {
  const factory SupportTicketResponse({
    dynamic success,
    final String? status,
    final String? message,
    @Default(false) bool isLoading,
    @Default(false) bool isImageUploading,
    required final SupportTicketPayload payload,
  }) = _SupportTicketResponse;

  factory SupportTicketResponse.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketResponseFromJson(json);
}

@freezed
class SupportTicketPayload with _$SupportTicketPayload {
  const factory SupportTicketPayload({
    @Default([]) List<SupportTicket> content,
    required final int totalPages,
    required final int totalElements,
    required final int numberOfElements,
    required final bool last,
    required final bool first,
    required final bool empty,
  }) = _SupportTicketPayload;

  factory SupportTicketPayload.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketPayloadFromJson(json);
}
