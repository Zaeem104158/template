import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/app/model/db_file/db_file.dart';

part 'policy_doc_upload_state.freezed.dart';

@freezed
class PolicyDocUploadState with _$PolicyDocUploadState {
  const factory PolicyDocUploadState.initial() = _Initial;
  const factory PolicyDocUploadState.loading() = _Loading;
  const factory PolicyDocUploadState.error(String error) = _Error;
  const factory PolicyDocUploadState.data(DbFile dbFile) = _Data;
}
