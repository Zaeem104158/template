// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'doc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Doc _$DocFromJson(Map<String, dynamic> json) {
  return _Doc.fromJson(json);
}

/// @nodoc
mixin _$Doc {
  int get id => throw _privateConstructorUsedError;
  int? get dbfileId => throw _privateConstructorUsedError;
  int? get typeId => throw _privateConstructorUsedError;
  DbFile? get dbFile => throw _privateConstructorUsedError;
  String? get docCreatedBy => throw _privateConstructorUsedError;
  String? get createdDocType => throw _privateConstructorUsedError;
  double get creationDateTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocCopyWith<Doc> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocCopyWith<$Res> {
  factory $DocCopyWith(Doc value, $Res Function(Doc) then) =
      _$DocCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int? dbfileId,
      int? typeId,
      DbFile? dbFile,
      String? docCreatedBy,
      String? createdDocType,
      double creationDateTimeStamp});

  $DbFileCopyWith<$Res>? get dbFile;
}

/// @nodoc
class _$DocCopyWithImpl<$Res> implements $DocCopyWith<$Res> {
  _$DocCopyWithImpl(this._value, this._then);

  final Doc _value;
  // ignore: unused_field
  final $Res Function(Doc) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? dbfileId = freezed,
    Object? typeId = freezed,
    Object? dbFile = freezed,
    Object? docCreatedBy = freezed,
    Object? createdDocType = freezed,
    Object? creationDateTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dbfileId: dbfileId == freezed
          ? _value.dbfileId
          : dbfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      typeId: typeId == freezed
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
      dbFile: dbFile == freezed
          ? _value.dbFile
          : dbFile // ignore: cast_nullable_to_non_nullable
              as DbFile?,
      docCreatedBy: docCreatedBy == freezed
          ? _value.docCreatedBy
          : docCreatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDocType: createdDocType == freezed
          ? _value.createdDocType
          : createdDocType // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDateTimeStamp: creationDateTimeStamp == freezed
          ? _value.creationDateTimeStamp
          : creationDateTimeStamp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $DbFileCopyWith<$Res>? get dbFile {
    if (_value.dbFile == null) {
      return null;
    }

    return $DbFileCopyWith<$Res>(_value.dbFile!, (value) {
      return _then(_value.copyWith(dbFile: value));
    });
  }
}

/// @nodoc
abstract class _$$_DocCopyWith<$Res> implements $DocCopyWith<$Res> {
  factory _$$_DocCopyWith(_$_Doc value, $Res Function(_$_Doc) then) =
      __$$_DocCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int? dbfileId,
      int? typeId,
      DbFile? dbFile,
      String? docCreatedBy,
      String? createdDocType,
      double creationDateTimeStamp});

  @override
  $DbFileCopyWith<$Res>? get dbFile;
}

/// @nodoc
class __$$_DocCopyWithImpl<$Res> extends _$DocCopyWithImpl<$Res>
    implements _$$_DocCopyWith<$Res> {
  __$$_DocCopyWithImpl(_$_Doc _value, $Res Function(_$_Doc) _then)
      : super(_value, (v) => _then(v as _$_Doc));

  @override
  _$_Doc get _value => super._value as _$_Doc;

  @override
  $Res call({
    Object? id = freezed,
    Object? dbfileId = freezed,
    Object? typeId = freezed,
    Object? dbFile = freezed,
    Object? docCreatedBy = freezed,
    Object? createdDocType = freezed,
    Object? creationDateTimeStamp = freezed,
  }) {
    return _then(_$_Doc(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dbfileId: dbfileId == freezed
          ? _value.dbfileId
          : dbfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      typeId: typeId == freezed
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
      dbFile: dbFile == freezed
          ? _value.dbFile
          : dbFile // ignore: cast_nullable_to_non_nullable
              as DbFile?,
      docCreatedBy: docCreatedBy == freezed
          ? _value.docCreatedBy
          : docCreatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDocType: createdDocType == freezed
          ? _value.createdDocType
          : createdDocType // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDateTimeStamp: creationDateTimeStamp == freezed
          ? _value.creationDateTimeStamp
          : creationDateTimeStamp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Doc implements _Doc {
  const _$_Doc(
      {required this.id,
      this.dbfileId,
      this.typeId,
      this.dbFile,
      this.docCreatedBy,
      this.createdDocType,
      this.creationDateTimeStamp = 0});

  factory _$_Doc.fromJson(Map<String, dynamic> json) => _$$_DocFromJson(json);

  @override
  final int id;
  @override
  final int? dbfileId;
  @override
  final int? typeId;
  @override
  final DbFile? dbFile;
  @override
  final String? docCreatedBy;
  @override
  final String? createdDocType;
  @override
  @JsonKey()
  final double creationDateTimeStamp;

  @override
  String toString() {
    return 'Doc(id: $id, dbfileId: $dbfileId, typeId: $typeId, dbFile: $dbFile, docCreatedBy: $docCreatedBy, createdDocType: $createdDocType, creationDateTimeStamp: $creationDateTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Doc &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.dbfileId, dbfileId) &&
            const DeepCollectionEquality().equals(other.typeId, typeId) &&
            const DeepCollectionEquality().equals(other.dbFile, dbFile) &&
            const DeepCollectionEquality()
                .equals(other.docCreatedBy, docCreatedBy) &&
            const DeepCollectionEquality()
                .equals(other.createdDocType, createdDocType) &&
            const DeepCollectionEquality()
                .equals(other.creationDateTimeStamp, creationDateTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(dbfileId),
      const DeepCollectionEquality().hash(typeId),
      const DeepCollectionEquality().hash(dbFile),
      const DeepCollectionEquality().hash(docCreatedBy),
      const DeepCollectionEquality().hash(createdDocType),
      const DeepCollectionEquality().hash(creationDateTimeStamp));

  @JsonKey(ignore: true)
  @override
  _$$_DocCopyWith<_$_Doc> get copyWith =>
      __$$_DocCopyWithImpl<_$_Doc>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocToJson(this);
  }
}

abstract class _Doc implements Doc {
  const factory _Doc(
      {required final int id,
      final int? dbfileId,
      final int? typeId,
      final DbFile? dbFile,
      final String? docCreatedBy,
      final String? createdDocType,
      final double creationDateTimeStamp}) = _$_Doc;

  factory _Doc.fromJson(Map<String, dynamic> json) = _$_Doc.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int? get dbfileId => throw _privateConstructorUsedError;
  @override
  int? get typeId => throw _privateConstructorUsedError;
  @override
  DbFile? get dbFile => throw _privateConstructorUsedError;
  @override
  String? get docCreatedBy => throw _privateConstructorUsedError;
  @override
  String? get createdDocType => throw _privateConstructorUsedError;
  @override
  double get creationDateTimeStamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DocCopyWith<_$_Doc> get copyWith => throw _privateConstructorUsedError;
}
