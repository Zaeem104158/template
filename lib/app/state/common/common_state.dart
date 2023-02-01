import 'package:freezed_annotation/freezed_annotation.dart';
import '../../model/common/common_response.dart';

part 'common_state.freezed.dart';

@freezed
class CommonState with _$CommonState {
  const factory CommonState.initial() = _Initial;
  const factory CommonState.loading() = _Loading;
  const factory CommonState.error(String error) = _Error;
  const factory CommonState.data(CommonResponse commonResponse) =
      _Data;
}
