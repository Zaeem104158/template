import 'package:thrive_mobile_app/features/profile/model/profile_response/profile_response.dart';

import '../../../../shared/utils/extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/features/profile/model/profile_update_request/profile_update_request.dart';

final profileUpdateRequestProvider = StateNotifierProvider.autoDispose<
    ProfileUpdateRequestNotifier, ProfileUpdateRequest>((ref) {
  return ProfileUpdateRequestNotifier();
});

class ProfileUpdateRequestNotifier extends StateNotifier<ProfileUpdateRequest> {
  ProfileUpdateRequestNotifier() : super(const ProfileUpdateRequest());

  void setName(String? value) {
    state = state.copyWith(name: value);
  }

  void setPhone(String? value) {
    state = state.copyWith(phone: value);
  }

  void setWebsite(String? value) {
    state = state.copyWith(website: value);
  }

  void setAllValue(ProfilePayload? payload) {
    state = state.copyWith(
      name: payload?.user.name,
      phone: payload?.userDetails?.phone,
      website: payload?.userDetails?.website,
    );
  }

  bool isInvalid() {
    return state.name.isBlank;
  }
}
