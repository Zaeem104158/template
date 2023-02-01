import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';

import '../state/auth_state.dart';
import 'auth_validation_provider.dart';
import '../repository/auth_repository.dart';
import '../../../app/values/constants.dart';
import '../model/response/login_response.dart';
import '../../../app/provider/core_provider.dart';
import '../../auth/repository/auth_repository_impl.dart';
import '../../../app/exports/generated_values_export.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(ref.watch(apiClientProvider));
});

final authStateProvider =
    StateNotifierProvider.autoDispose<AuthStateNotifier, AuthState>((ref) {
  return AuthStateNotifier(ref.read);
});

class AuthStateNotifier extends StateNotifier<AuthState> {
  final Reader _reader;
  late final AuthRepository _authRepository;

  AuthStateNotifier(this._reader) : super(const AuthState.initial()) {
    _authRepository = _reader(authRepositoryProvider);
  }

  bool isLoading() => state == const AuthState.loading();

  Future<void> login() async {
    state = const AuthState.loading();
    final _loginRequest = _reader(loginRequestProvider);
    final _response = await _authRepository.login(_loginRequest);

    if (mounted) {
      _response.whenOrNull(
        data: (data) async {
          try {
            final loginResponse = (data as LoginResponse);
            final payload = loginResponse.payload;
            final user = payload?.user;
            final roleType = user?.roles?[0].roleType;

            if (roleType != null && roleType == UserType.CUSTOMER.name) {
              final _commonRepositry = _reader(commonRepositoryProvider);
              final _preferenceManager = _reader(preferenceManagerProvider);

              await _preferenceManager.setString(
                keyUserType,
                roleType,
              );
              await _preferenceManager.setString(
                keyJwtToken,
                payload?.accessToken ?? "",
              );
              await _preferenceManager.setString(
                keyRefreshToken,
                payload?.refreshToken ?? "",
              );

              if (user != null) {
                await _commonRepositry.saveUserLocally(
                  user,
                  _reader,
                  _preferenceManager,
                );
                subscribeUnSubscribeTopicToFirebase(user.id);
              }

              state = AuthState.data(loginResponse.message);
            } else {
              state = AuthState.error(LocaleKeys.dontHavePermission.tr());
            }
          } catch (e) {
            if (mounted) {
              state = AuthState.error(e.toString());
            }
          }
        },
        error: (error) => state = AuthState.error(error),
      );
    }
  }

  Future<void> forgotPassword() async {
    final _email = _reader(forgotPasswordEmailStateProvider);
    state = const AuthState.loading();
    state = await _authRepository.forgotPassword(_email!);
  }
}
