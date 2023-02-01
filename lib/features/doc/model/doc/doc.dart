import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/app/model/db_file/db_file.dart';

part 'doc.freezed.dart';
part 'doc.g.dart';

@freezed
class Doc with _$Doc {
  const factory Doc({
    required final int id,
    final int? dbfileId,
    final int? typeId,
    final DbFile? dbFile,
    final String? docCreatedBy,
    final String? createdDocType,
    @Default(0) double creationDateTimeStamp,
  }) = _Doc;

  factory Doc.fromJson(Map<String, dynamic> json) => _$DocFromJson(json);
}

List<Doc> convertToDocData(List<dynamic> datas) {
  return datas.map((e) => e as Doc).toList();
}
