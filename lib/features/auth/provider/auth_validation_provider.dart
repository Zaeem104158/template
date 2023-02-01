import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../shared/utils/extensions.dart';
import '../../auth/model/request/login/login_request.dart';

final loginRequestProvider =
    StateNotifierProvider.autoDispose<_LoginRequestNotifier, LoginRequest>((ref) {
  return _LoginRequestNotifier();
});

class _LoginRequestNotifier extends StateNotifier<LoginRequest> {
  _LoginRequestNotifier() : super(const LoginRequest());

  void setEmail(String? email) {
    state = state.copyWith(email: email);
  }

  void setPassword(String? password) {
    state = state.copyWith(password: password);
  }

  bool isInvalid() {
    return state.email.isBlank || state.password.isBlank;
  }
}

final forgotPasswordEmailStateProvider =
    StateProvider.autoDispose<String?>((ref) {
  return null;
});
