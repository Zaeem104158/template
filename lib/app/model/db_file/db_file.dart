import 'package:freezed_annotation/freezed_annotation.dart';

part 'db_file.freezed.dart';
part 'db_file.g.dart';

@freezed
class DbFile with _$DbFile {
  const factory DbFile({
    required final int id,
    final String? fileExtension,
    final String? fileName,
    final String? fileType,
    @Default("") final String fileUrl,
    String? message,
  }) = _DbFile;

  factory DbFile.fromJson(Map<String, dynamic> json) => _$DbFileFromJson(json);
}
