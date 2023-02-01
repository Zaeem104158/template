import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/model/user/user.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/repository/common_repository.dart';
import 'package:thrive_mobile_app/features/address/model/address/address.dart';
import 'package:thrive_mobile_app/features/profile/model/profile_response/profile_response.dart';
import 'package:thrive_mobile_app/features/profile/repository/profile_repository.dart';
import 'package:thrive_mobile_app/shared/preference/preference_manager.dart';
import 'repository_provider/profile_repository_provider.dart';
import 'validation_provider/profile_validation_provider.dart';

final profileStateProvider =
    StateNotifierProvider.autoDispose<ProfileStateNotifier, ProfileResponse>(
        (ref) {
  return ProfileStateNotifier(
    ref.read,
    ref.watch(commonRepositoryProvider),
    ref.watch(profileRepositoryProvider),
    ref.watch(preferenceManagerProvider),
  );
});

class ProfileStateNotifier extends StateNotifier<ProfileResponse> {
  final Reader _reader;
  final CommonRepository _commonRepository;
  final ProfileRepository _profileRepository;
  final PreferenceManager _preferenceManager;

  ProfileStateNotifier(
    this._reader,
    this._commonRepository,
    this._profileRepository,
    this._preferenceManager,
  ) : super(const ProfileResponse(isLoading: true)) {
    profileInfo();
  }

  Future<void> profileInfo() async {
    state = state.copyWith(isLoading: true);
    final response = await _profileRepository.profileInfo();

    if (mounted) {
      final user = response.payload?.user;

      if (user != null) {
        _reader(profileUpdateRequestProvider.notifier)
            .setAllValue(response.payload);
        _saveUserDataLocally(user);
      }

      state = response;
    }
  }

  Future<void> uploadProfileImage(String filePath) async {
    state = state.copyWith(isImageUploading: true);
    final response = await _profileRepository.uplaodProfileImage(filePath);

    if (response.success == true) {
      final profilePayload = state.payload?.copyWith(
        user: User.fromJson(response.payload),
      );

      state = state.copyWith(
        success: true,
        isImageUploading: false,
        payload: profilePayload,
      );

      _saveUserDataLocally(profilePayload?.user);
    } else {
      state = state.copyWith(
        success: false,
        isImageUploading: false,
        message: response.message,
      );
    }
  }

  Future<void> updateProfileInfo() async {
    state = state.copyWith(isLoading: true);
    final updateRequest = _reader(profileUpdateRequestProvider);
    final response = await _profileRepository.updateProfileInfo(updateRequest);

    if (response.success == true) {
      _saveUserDataLocally(response.payload?.user);
    }

    state = response;
  }

  void setAddress(Address? address) {
    final userDetails = state.payload?.userDetails?.copyWith(
      address: address,
    );

    final payload = state.payload?.copyWith(
      userDetails: userDetails,
    );

    state = state.copyWith(payload: payload);
  }

  Future<void> _saveUserDataLocally(User? user) async {
    if (user != null) {
      try {
        await _commonRepository.saveUserLocally(
            user, _reader, _preferenceManager);
      } catch (_) {}
    }
  }
}
