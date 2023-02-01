import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/values/constants.dart';
import 'package:thrive_mobile_app/features/profile/repository/profile_repository.dart';
import 'package:thrive_mobile_app/features/profile/state/update_password_state.dart';
import 'package:thrive_mobile_app/shared/preference/preference_manager.dart';
import 'repository_provider/profile_repository_provider.dart';
import 'validation_provider/password_validation_provider.dart';

final passwordUpdateStateProvider = StateNotifierProvider.autoDispose<
    PasswordUpdateStateNotifier, UpdatePasswordState>((ref) {
  return PasswordUpdateStateNotifier(
    ref.read,
    ref.watch(profileRepositoryProvider),
    ref.watch(preferenceManagerProvider),
  );
});

class PasswordUpdateStateNotifier extends StateNotifier<UpdatePasswordState> {
  final Reader _reader;
  final PreferenceManager _preferenceManager;
  final ProfileRepository _profileRepository;

  PasswordUpdateStateNotifier(
    this._reader,
    this._profileRepository,
    this._preferenceManager,
  ) : super(const UpdatePasswordState.initial());

  Future<void> updatePassword() async {
    try {
      state = const UpdatePasswordState.loading();
      final email = await _preferenceManager.getString(keyUserEmail);

      var _passwordUpdateRequest = _reader(passwordUpdateRequestProvider);
      _passwordUpdateRequest = _passwordUpdateRequest.copyWith(email: email);

      state = await _profileRepository.updatePassword(_passwordUpdateRequest);
    } catch (e) {
      state = UpdatePasswordState.error(e.toString());
    }
  }

  bool isLoading() {
    return state == const UpdatePasswordState.loading();
  }
}
