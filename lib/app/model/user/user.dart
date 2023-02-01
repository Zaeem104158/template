import 'package:freezed_annotation/freezed_annotation.dart';
import '../role/role.dart';
import '../../../app/model/db_file/db_file.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required final int id,
    @Default("") final String email,
    @Default("") final String name,
    final String? passwordResetToken,
    final List<Role>? roles,
    final DbFile? photo,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
