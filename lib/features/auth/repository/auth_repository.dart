import '../state/auth_state.dart';
import '../../auth/model/request/login/login_request.dart';
import '../../../features/auth/model/request/login/login_request.dart';

abstract class AuthRepository {
  Future<AuthState> login(LoginRequest loginRequest);
  Future<AuthState> forgotPassword(String email);
}
