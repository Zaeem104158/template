import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/model/common/common_response.dart';
import 'package:thrive_mobile_app/app/model/user/user.dart';
import 'package:thrive_mobile_app/shared/preference/preference_manager.dart';

abstract class CommonRepository {
  Future<void> saveUserLocally(
    User user,
    Reader reader,
    PreferenceManager preferenceManager,
  );

  Future<CommonResponse> uploadFile({
    required String apiPath,
    required String filePath,
    String? formDataName,
    Map<String, dynamic>? query,
  });
}
