// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'certificate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Certificate _$CertificateFromJson(Map<String, dynamic> json) {
  return _Certificate.fromJson(json);
}

/// @nodoc
mixin _$Certificate {
  int get id => throw _privateConstructorUsedError;
  String? get certificateStatus => throw _privateConstructorUsedError;
  int? get policyId => throw _privateConstructorUsedError;
  Policy? get policy => throw _privateConstructorUsedError;
  double get creationDateTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CertificateCopyWith<Certificate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificateCopyWith<$Res> {
  factory $CertificateCopyWith(
          Certificate value, $Res Function(Certificate) then) =
      _$CertificateCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? certificateStatus,
      int? policyId,
      Policy? policy,
      double creationDateTimeStamp});

  $PolicyCopyWith<$Res>? get policy;
}

/// @nodoc
class _$CertificateCopyWithImpl<$Res> implements $CertificateCopyWith<$Res> {
  _$CertificateCopyWithImpl(this._value, this._then);

  final Certificate _value;
  // ignore: unused_field
  final $Res Function(Certificate) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? certificateStatus = freezed,
    Object? policyId = freezed,
    Object? policy = freezed,
    Object? creationDateTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      certificateStatus: certificateStatus == freezed
          ? _value.certificateStatus
          : certificateStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      policyId: policyId == freezed
          ? _value.policyId
          : policyId // ignore: cast_nullable_to_non_nullable
              as int?,
      policy: policy == freezed
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as Policy?,
      creationDateTimeStamp: creationDateTimeStamp == freezed
          ? _value.creationDateTimeStamp
          : creationDateTimeStamp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $PolicyCopyWith<$Res>? get policy {
    if (_value.policy == null) {
      return null;
    }

    return $PolicyCopyWith<$Res>(_value.policy!, (value) {
      return _then(_value.copyWith(policy: value));
    });
  }
}

/// @nodoc
abstract class _$$_CertificateCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory _$$_CertificateCopyWith(
          _$_Certificate value, $Res Function(_$_Certificate) then) =
      __$$_CertificateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? certificateStatus,
      int? policyId,
      Policy? policy,
      double creationDateTimeStamp});

  @override
  $PolicyCopyWith<$Res>? get policy;
}

/// @nodoc
class __$$_CertificateCopyWithImpl<$Res> extends _$CertificateCopyWithImpl<$Res>
    implements _$$_CertificateCopyWith<$Res> {
  __$$_CertificateCopyWithImpl(
      _$_Certificate _value, $Res Function(_$_Certificate) _then)
      : super(_value, (v) => _then(v as _$_Certificate));

  @override
  _$_Certificate get _value => super._value as _$_Certificate;

  @override
  $Res call({
    Object? id = freezed,
    Object? certificateStatus = freezed,
    Object? policyId = freezed,
    Object? policy = freezed,
    Object? creationDateTimeStamp = freezed,
  }) {
    return _then(_$_Certificate(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      certificateStatus: certificateStatus == freezed
          ? _value.certificateStatus
          : certificateStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      policyId: policyId == freezed
          ? _value.policyId
          : policyId // ignore: cast_nullable_to_non_nullable
              as int?,
      policy: policy == freezed
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as Policy?,
      creationDateTimeStamp: creationDateTimeStamp == freezed
          ? _value.creationDateTimeStamp
          : creationDateTimeStamp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Certificate implements _Certificate {
  const _$_Certificate(
      {required this.id,
      this.certificateStatus,
      this.policyId,
      this.policy,
      this.creationDateTimeStamp = 0});

  factory _$_Certificate.fromJson(Map<String, dynamic> json) =>
      _$$_CertificateFromJson(json);

  @override
  final int id;
  @override
  final String? certificateStatus;
  @override
  final int? policyId;
  @override
  final Policy? policy;
  @override
  @JsonKey()
  final double creationDateTimeStamp;

  @override
  String toString() {
    return 'Certificate(id: $id, certificateStatus: $certificateStatus, policyId: $policyId, policy: $policy, creationDateTimeStamp: $creationDateTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Certificate &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.certificateStatus, certificateStatus) &&
            const DeepCollectionEquality().equals(other.policyId, policyId) &&
            const DeepCollectionEquality().equals(other.policy, policy) &&
            const DeepCollectionEquality()
                .equals(other.creationDateTimeStamp, creationDateTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(certificateStatus),
      const DeepCollectionEquality().hash(policyId),
      const DeepCollectionEquality().hash(policy),
      const DeepCollectionEquality().hash(creationDateTimeStamp));

  @JsonKey(ignore: true)
  @override
  _$$_CertificateCopyWith<_$_Certificate> get copyWith =>
      __$$_CertificateCopyWithImpl<_$_Certificate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CertificateToJson(this);
  }
}

abstract class _Certificate implements Certificate {
  const factory _Certificate(
      {required final int id,
      final String? certificateStatus,
      final int? policyId,
      final Policy? policy,
      final double creationDateTimeStamp}) = _$_Certificate;

  factory _Certificate.fromJson(Map<String, dynamic> json) =
      _$_Certificate.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String? get certificateStatus => throw _privateConstructorUsedError;
  @override
  int? get policyId => throw _privateConstructorUsedError;
  @override
  Policy? get policy => throw _privateConstructorUsedError;
  @override
  double get creationDateTimeStamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CertificateCopyWith<_$_Certificate> get copyWith =>
      throw _privateConstructorUsedError;
}
