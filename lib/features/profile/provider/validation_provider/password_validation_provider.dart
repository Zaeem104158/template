import '../../../../shared/utils/extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/features/profile/model/password_update_request/password_update_request.dart';

final passwordUpdateRequestProvider = StateNotifierProvider.autoDispose<
    PasswordUpdateRequestNotifier, PasswordUpdateRequest>((ref) {
  return PasswordUpdateRequestNotifier();
});

class PasswordUpdateRequestNotifier
    extends StateNotifier<PasswordUpdateRequest> {
  PasswordUpdateRequestNotifier() : super(const PasswordUpdateRequest());

  void setNewPassword(String? value) {
    state = state.copyWith(newPassword: value);
  }

  void setPreviousPassword(String? value) {
    state = state.copyWith(previousPassword: value);
  }

  bool isInvalid() {
    return state.previousPassword.isBlank || state.newPassword.isBlank;
  }
}
