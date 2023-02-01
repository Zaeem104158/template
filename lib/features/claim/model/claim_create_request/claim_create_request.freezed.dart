// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'claim_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClaimCreateRequest _$ClaimCreateRequestFromJson(Map<String, dynamic> json) {
  return _ClaimCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$ClaimCreateRequest {
  String? get carrierId => throw _privateConstructorUsedError;
  String? get productId => throw _privateConstructorUsedError;
  String? get productName => throw _privateConstructorUsedError;
  String? get policyNumber => throw _privateConstructorUsedError;
  String? get dateOfAccident => throw _privateConstructorUsedError;
  String? get claimCreatedBy => throw _privateConstructorUsedError;
  String? get incidentDescription => throw _privateConstructorUsedError;
  List<int> get dbfileIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimCreateRequestCopyWith<ClaimCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimCreateRequestCopyWith<$Res> {
  factory $ClaimCreateRequestCopyWith(
          ClaimCreateRequest value, $Res Function(ClaimCreateRequest) then) =
      _$ClaimCreateRequestCopyWithImpl<$Res>;
  $Res call(
      {String? carrierId,
      String? productId,
      String? productName,
      String? policyNumber,
      String? dateOfAccident,
      String? claimCreatedBy,
      String? incidentDescription,
      List<int> dbfileIds});
}

/// @nodoc
class _$ClaimCreateRequestCopyWithImpl<$Res>
    implements $ClaimCreateRequestCopyWith<$Res> {
  _$ClaimCreateRequestCopyWithImpl(this._value, this._then);

  final ClaimCreateRequest _value;
  // ignore: unused_field
  final $Res Function(ClaimCreateRequest) _then;

  @override
  $Res call({
    Object? carrierId = freezed,
    Object? productId = freezed,
    Object? productName = freezed,
    Object? policyNumber = freezed,
    Object? dateOfAccident = freezed,
    Object? claimCreatedBy = freezed,
    Object? incidentDescription = freezed,
    Object? dbfileIds = freezed,
  }) {
    return _then(_value.copyWith(
      carrierId: carrierId == freezed
          ? _value.carrierId
          : carrierId // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      policyNumber: policyNumber == freezed
          ? _value.policyNumber
          : policyNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfAccident: dateOfAccident == freezed
          ? _value.dateOfAccident
          : dateOfAccident // ignore: cast_nullable_to_non_nullable
              as String?,
      claimCreatedBy: claimCreatedBy == freezed
          ? _value.claimCreatedBy
          : claimCreatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      incidentDescription: incidentDescription == freezed
          ? _value.incidentDescription
          : incidentDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      dbfileIds: dbfileIds == freezed
          ? _value.dbfileIds
          : dbfileIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$$_ClaimCreateRequestCopyWith<$Res>
    implements $ClaimCreateRequestCopyWith<$Res> {
  factory _$$_ClaimCreateRequestCopyWith(_$_ClaimCreateRequest value,
          $Res Function(_$_ClaimCreateRequest) then) =
      __$$_ClaimCreateRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? carrierId,
      String? productId,
      String? productName,
      String? policyNumber,
      String? dateOfAccident,
      String? claimCreatedBy,
      String? incidentDescription,
      List<int> dbfileIds});
}

/// @nodoc
class __$$_ClaimCreateRequestCopyWithImpl<$Res>
    extends _$ClaimCreateRequestCopyWithImpl<$Res>
    implements _$$_ClaimCreateRequestCopyWith<$Res> {
  __$$_ClaimCreateRequestCopyWithImpl(
      _$_ClaimCreateRequest _value, $Res Function(_$_ClaimCreateRequest) _then)
      : super(_value, (v) => _then(v as _$_ClaimCreateRequest));

  @override
  _$_ClaimCreateRequest get _value => super._value as _$_ClaimCreateRequest;

  @override
  $Res call({
    Object? carrierId = freezed,
    Object? productId = freezed,
    Object? productName = freezed,
    Object? policyNumber = freezed,
    Object? dateOfAccident = freezed,
    Object? claimCreatedBy = freezed,
    Object? incidentDescription = freezed,
    Object? dbfileIds = freezed,
  }) {
    return _then(_$_ClaimCreateRequest(
      carrierId: carrierId == freezed
          ? _value.carrierId
          : carrierId // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      policyNumber: policyNumber == freezed
          ? _value.policyNumber
          : policyNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfAccident: dateOfAccident == freezed
          ? _value.dateOfAccident
          : dateOfAccident // ignore: cast_nullable_to_non_nullable
              as String?,
      claimCreatedBy: claimCreatedBy == freezed
          ? _value.claimCreatedBy
          : claimCreatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      incidentDescription: incidentDescription == freezed
          ? _value.incidentDescription
          : incidentDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      dbfileIds: dbfileIds == freezed
          ? _value._dbfileIds
          : dbfileIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClaimCreateRequest implements _ClaimCreateRequest {
  const _$_ClaimCreateRequest(
      {this.carrierId,
      this.productId,
      this.productName,
      this.policyNumber,
      this.dateOfAccident,
      this.claimCreatedBy,
      this.incidentDescription,
      final List<int> dbfileIds = const []})
      : _dbfileIds = dbfileIds;

  factory _$_ClaimCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ClaimCreateRequestFromJson(json);

  @override
  final String? carrierId;
  @override
  final String? productId;
  @override
  final String? productName;
  @override
  final String? policyNumber;
  @override
  final String? dateOfAccident;
  @override
  final String? claimCreatedBy;
  @override
  final String? incidentDescription;
  final List<int> _dbfileIds;
  @override
  @JsonKey()
  List<int> get dbfileIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dbfileIds);
  }

  @override
  String toString() {
    return 'ClaimCreateRequest(carrierId: $carrierId, productId: $productId, productName: $productName, policyNumber: $policyNumber, dateOfAccident: $dateOfAccident, claimCreatedBy: $claimCreatedBy, incidentDescription: $incidentDescription, dbfileIds: $dbfileIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClaimCreateRequest &&
            const DeepCollectionEquality().equals(other.carrierId, carrierId) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality()
                .equals(other.productName, productName) &&
            const DeepCollectionEquality()
                .equals(other.policyNumber, policyNumber) &&
            const DeepCollectionEquality()
                .equals(other.dateOfAccident, dateOfAccident) &&
            const DeepCollectionEquality()
                .equals(other.claimCreatedBy, claimCreatedBy) &&
            const DeepCollectionEquality()
                .equals(other.incidentDescription, incidentDescription) &&
            const DeepCollectionEquality()
                .equals(other._dbfileIds, _dbfileIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(carrierId),
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(productName),
      const DeepCollectionEquality().hash(policyNumber),
      const DeepCollectionEquality().hash(dateOfAccident),
      const DeepCollectionEquality().hash(claimCreatedBy),
      const DeepCollectionEquality().hash(incidentDescription),
      const DeepCollectionEquality().hash(_dbfileIds));

  @JsonKey(ignore: true)
  @override
  _$$_ClaimCreateRequestCopyWith<_$_ClaimCreateRequest> get copyWith =>
      __$$_ClaimCreateRequestCopyWithImpl<_$_ClaimCreateRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClaimCreateRequestToJson(this);
  }
}

abstract class _ClaimCreateRequest implements ClaimCreateRequest {
  const factory _ClaimCreateRequest(
      {final String? carrierId,
      final String? productId,
      final String? productName,
      final String? policyNumber,
      final String? dateOfAccident,
      final String? claimCreatedBy,
      final String? incidentDescription,
      final List<int> dbfileIds}) = _$_ClaimCreateRequest;

  factory _ClaimCreateRequest.fromJson(Map<String, dynamic> json) =
      _$_ClaimCreateRequest.fromJson;

  @override
  String? get carrierId => throw _privateConstructorUsedError;
  @override
  String? get productId => throw _privateConstructorUsedError;
  @override
  String? get productName => throw _privateConstructorUsedError;
  @override
  String? get policyNumber => throw _privateConstructorUsedError;
  @override
  String? get dateOfAccident => throw _privateConstructorUsedError;
  @override
  String? get claimCreatedBy => throw _privateConstructorUsedError;
  @override
  String? get incidentDescription => throw _privateConstructorUsedError;
  @override
  List<int> get dbfileIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ClaimCreateRequestCopyWith<_$_ClaimCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
