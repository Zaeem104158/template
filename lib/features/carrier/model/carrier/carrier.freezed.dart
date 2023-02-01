// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'carrier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Carrier _$CarrierFromJson(Map<String, dynamic> json) {
  return _Carrier.fromJson(json);
}

/// @nodoc
mixin _$Carrier {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get websiteUrl => throw _privateConstructorUsedError;
  double get creationDateTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarrierCopyWith<Carrier> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarrierCopyWith<$Res> {
  factory $CarrierCopyWith(Carrier value, $Res Function(Carrier) then) =
      _$CarrierCopyWithImpl<$Res>;
  $Res call(
      {int id, String? name, String? websiteUrl, double creationDateTimeStamp});
}

/// @nodoc
class _$CarrierCopyWithImpl<$Res> implements $CarrierCopyWith<$Res> {
  _$CarrierCopyWithImpl(this._value, this._then);

  final Carrier _value;
  // ignore: unused_field
  final $Res Function(Carrier) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? websiteUrl = freezed,
    Object? creationDateTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: websiteUrl == freezed
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDateTimeStamp: creationDateTimeStamp == freezed
          ? _value.creationDateTimeStamp
          : creationDateTimeStamp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_CarrierCopyWith<$Res> implements $CarrierCopyWith<$Res> {
  factory _$$_CarrierCopyWith(
          _$_Carrier value, $Res Function(_$_Carrier) then) =
      __$$_CarrierCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String? name, String? websiteUrl, double creationDateTimeStamp});
}

/// @nodoc
class __$$_CarrierCopyWithImpl<$Res> extends _$CarrierCopyWithImpl<$Res>
    implements _$$_CarrierCopyWith<$Res> {
  __$$_CarrierCopyWithImpl(_$_Carrier _value, $Res Function(_$_Carrier) _then)
      : super(_value, (v) => _then(v as _$_Carrier));

  @override
  _$_Carrier get _value => super._value as _$_Carrier;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? websiteUrl = freezed,
    Object? creationDateTimeStamp = freezed,
  }) {
    return _then(_$_Carrier(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: websiteUrl == freezed
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
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
class _$_Carrier implements _Carrier {
  const _$_Carrier(
      {required this.id,
      this.name,
      this.websiteUrl,
      this.creationDateTimeStamp = 0});

  factory _$_Carrier.fromJson(Map<String, dynamic> json) =>
      _$$_CarrierFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? websiteUrl;
  @override
  @JsonKey()
  final double creationDateTimeStamp;

  @override
  String toString() {
    return 'Carrier(id: $id, name: $name, websiteUrl: $websiteUrl, creationDateTimeStamp: $creationDateTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Carrier &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.websiteUrl, websiteUrl) &&
            const DeepCollectionEquality()
                .equals(other.creationDateTimeStamp, creationDateTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(websiteUrl),
      const DeepCollectionEquality().hash(creationDateTimeStamp));

  @JsonKey(ignore: true)
  @override
  _$$_CarrierCopyWith<_$_Carrier> get copyWith =>
      __$$_CarrierCopyWithImpl<_$_Carrier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarrierToJson(this);
  }
}

abstract class _Carrier implements Carrier {
  const factory _Carrier(
      {required final int id,
      final String? name,
      final String? websiteUrl,
      final double creationDateTimeStamp}) = _$_Carrier;

  factory _Carrier.fromJson(Map<String, dynamic> json) = _$_Carrier.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get websiteUrl => throw _privateConstructorUsedError;
  @override
  double get creationDateTimeStamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CarrierCopyWith<_$_Carrier> get copyWith =>
      throw _privateConstructorUsedError;
}
