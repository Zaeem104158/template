import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_ticket_create_request.freezed.dart';
part 'support_ticket_create_request.g.dart';

@freezed
class SupportTicketCreateRequest with _$SupportTicketCreateRequest {
  const factory SupportTicketCreateRequest({
    final String? name,
    final String? title,
    final String? desc,
    final String? description,
    final String? type,
    final String? userEmail,
  }) = _SupportTicketCreateRequest;

  factory SupportTicketCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketCreateRequestFromJson(json);
}
