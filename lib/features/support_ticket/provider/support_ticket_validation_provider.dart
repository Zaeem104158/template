import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/features/support_ticket/model/support_ticket_create_request/support_ticket_create_request.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

final supportTicketRequestProvider = StateNotifierProvider.autoDispose<
    _SupportTicketCreateRequestNotifier, SupportTicketCreateRequest>((ref) {
  return _SupportTicketCreateRequestNotifier();
});

class _SupportTicketCreateRequestNotifier
    extends StateNotifier<SupportTicketCreateRequest> {
  _SupportTicketCreateRequestNotifier()
      : super(const SupportTicketCreateRequest());

  void setTitle(String? value) {
    state = state.copyWith(title: value);
  }

  void setDescription(String? value) {
    state = state.copyWith(desc: value);
  }

  bool isInvalid() {
    // return state.title.isBlank || state.desc.isBlank;
    return state.title.isBlank;
  }
}
