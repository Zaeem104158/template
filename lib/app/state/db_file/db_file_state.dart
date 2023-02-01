import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/app/model/db_file/db_file.dart';

part 'db_file_state.freezed.dart';

@freezed
class DbFileState with _$DbFileState {
  const factory DbFileState.initial() = _Initial;
  const factory DbFileState.loading() = _Loading;
  const factory DbFileState.error(String error) = _Error;
  const factory DbFileState.data(DbFile dbFile) = _Data;
}
