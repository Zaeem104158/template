// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'db_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DbFile _$DbFileFromJson(Map<String, dynamic> json) {
  return _DbFile.fromJson(json);
}

/// @nodoc
mixin _$DbFile {
  int get id => throw _privateConstructorUsedError;
  String? get fileExtension => throw _privateConstructorUsedError;
  String? get fileName => throw _privateConstructorUsedError;
  String? get fileType => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DbFileCopyWith<DbFile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DbFileCopyWith<$Res> {
  factory $DbFileCopyWith(DbFile value, $Res Function(DbFile) then) =
      _$DbFileCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? fileExtension,
      String? fileName,
      String? fileType,
      String fileUrl,
      String? message});
}

/// @nodoc
class _$DbFileCopyWithImpl<$Res> implements $DbFileCopyWith<$Res> {
  _$DbFileCopyWithImpl(this._value, this._then);

  final DbFile _value;
  // ignore: unused_field
  final $Res Function(DbFile) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? fileExtension = freezed,
    Object? fileName = freezed,
    Object? fileType = freezed,
    Object? fileUrl = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fileExtension: fileExtension == freezed
          ? _value.fileExtension
          : fileExtension // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: fileType == freezed
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DbFileCopyWith<$Res> implements $DbFileCopyWith<$Res> {
  factory _$$_DbFileCopyWith(_$_DbFile value, $Res Function(_$_DbFile) then) =
      __$$_DbFileCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? fileExtension,
      String? fileName,
      String? fileType,
      String fileUrl,
      String? message});
}

/// @nodoc
class __$$_DbFileCopyWithImpl<$Res> extends _$DbFileCopyWithImpl<$Res>
    implements _$$_DbFileCopyWith<$Res> {
  __$$_DbFileCopyWithImpl(_$_DbFile _value, $Res Function(_$_DbFile) _then)
      : super(_value, (v) => _then(v as _$_DbFile));

  @override
  _$_DbFile get _value => super._value as _$_DbFile;

  @override
  $Res call({
    Object? id = freezed,
    Object? fileExtension = freezed,
    Object? fileName = freezed,
    Object? fileType = freezed,
    Object? fileUrl = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_DbFile(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fileExtension: fileExtension == freezed
          ? _value.fileExtension
          : fileExtension // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: fileType == freezed
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DbFile implements _DbFile {
  const _$_DbFile(
      {required this.id,
      this.fileExtension,
      this.fileName,
      this.fileType,
      this.fileUrl = "",
      this.message});

  factory _$_DbFile.fromJson(Map<String, dynamic> json) =>
      _$$_DbFileFromJson(json);

  @override
  final int id;
  @override
  final String? fileExtension;
  @override
  final String? fileName;
  @override
  final String? fileType;
  @override
  @JsonKey()
  final String fileUrl;
  @override
  final String? message;

  @override
  String toString() {
    return 'DbFile(id: $id, fileExtension: $fileExtension, fileName: $fileName, fileType: $fileType, fileUrl: $fileUrl, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DbFile &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.fileExtension, fileExtension) &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.fileType, fileType) &&
            const DeepCollectionEquality().equals(other.fileUrl, fileUrl) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(fileExtension),
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(fileType),
      const DeepCollectionEquality().hash(fileUrl),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_DbFileCopyWith<_$_DbFile> get copyWith =>
      __$$_DbFileCopyWithImpl<_$_DbFile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DbFileToJson(this);
  }
}

abstract class _DbFile implements DbFile {
  const factory _DbFile(
      {required final int id,
      final String? fileExtension,
      final String? fileName,
      final String? fileType,
      final String fileUrl,
      final String? message}) = _$_DbFile;

  factory _DbFile.fromJson(Map<String, dynamic> json) = _$_DbFile.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String? get fileExtension => throw _privateConstructorUsedError;
  @override
  String? get fileName => throw _privateConstructorUsedError;
  @override
  String? get fileType => throw _privateConstructorUsedError;
  @override
  String get fileUrl => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DbFileCopyWith<_$_DbFile> get copyWith =>
      throw _privateConstructorUsedError;
}
