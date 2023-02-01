import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import '../model/terms_privacy_response/terms_privacy_response.dart';

final termsPrivacyProvider =
    FutureProvider.autoDispose.family<TermsPrivacyResponse, String>(
  (ref, apiPath) async {
    final apiClient = ref.watch(apiClientProvider);
    final response = await apiClient.getRequest(apiPath);

    return response.when(success: (success) {
      return TermsPrivacyResponse.fromJson(success);
    }, error: (error) {
      return TermsPrivacyResponse(
        success: false,
        message: error,
      );
    });
  },
);
