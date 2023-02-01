import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/app/model/common/common_response.dart';

part 'update_password_state.freezed.dart';

@freezed
class UpdatePasswordState with _$UpdatePasswordState {
  const factory UpdatePasswordState.initial() = _Initial;
  const factory UpdatePasswordState.loading() = _Loading;
  const factory UpdatePasswordState.data(CommonResponse data) = _Data;
  const factory UpdatePasswordState.error(String error) = _Error;
}
