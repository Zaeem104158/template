import '../model/response/login_response.dart';
import 'auth_repository.dart';
import '../../../app/values/api_endpoints.dart';
import '../../../features/auth/state/auth_state.dart';
import '../../../app/model/common/common_response.dart';
import '../../../shared/network/api_client_provider.dart';
import '../../../features/auth/model/request/login/login_request.dart';

class AuthRepositoryImpl implements AuthRepository {
  final ApiClient _apiClient;

  const AuthRepositoryImpl(this._apiClient);

  @override
  Future<AuthState> login(LoginRequest loginRequest) async {
    final response = await _apiClient.postRequest(
      loginEndpoint,
      loginRequest.toJson(),
    );

    return response.when(success: (success) {
      return AuthState.data(LoginResponse.fromJson(success));
    }, error: (error) {
      return AuthState.error(error);
    });
  }

  @override
  Future<AuthState> forgotPassword(String email) async {
    final response = await _apiClient
        .postRequest(forgetPasswordEndpoint, {"userEmail": email});

    return response.when(success: (success) {
      return AuthState.data(CommonResponse.fromJson(success));
    }, error: (error) {
      return AuthState.error(error);
    });
  }
}
