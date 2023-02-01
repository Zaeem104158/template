// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'opportunity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Opportunity _$OpportunityFromJson(Map<String, dynamic> json) {
  return _Opportunity.fromJson(json);
}

/// @nodoc
mixin _$Opportunity {
  int get id => throw _privateConstructorUsedError;
  Contact? get contact => throw _privateConstructorUsedError;
  User? get assignedAgent => throw _privateConstructorUsedError;
  String? get creationDate => throw _privateConstructorUsedError;
  String? get insuranceName => throw _privateConstructorUsedError;
  int? get insuranceTypeId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get opportunityCreatedBy => throw _privateConstructorUsedError;
  double get creationDateTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpportunityCopyWith<Opportunity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpportunityCopyWith<$Res> {
  factory $OpportunityCopyWith(
          Opportunity value, $Res Function(Opportunity) then) =
      _$OpportunityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      Contact? contact,
      User? assignedAgent,
      String? creationDate,
      String? insuranceName,
      int? insuranceTypeId,
      String status,
      String? opportunityCreatedBy,
      double creationDateTimeStamp});

  $ContactCopyWith<$Res>? get contact;
  $UserCopyWith<$Res>? get assignedAgent;
}

/// @nodoc
class _$OpportunityCopyWithImpl<$Res> implements $OpportunityCopyWith<$Res> {
  _$OpportunityCopyWithImpl(this._value, this._then);

  final Opportunity _value;
  // ignore: unused_field
  final $Res Function(Opportunity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? contact = freezed,
    Object? assignedAgent = freezed,
    Object? creationDate = freezed,
    Object? insuranceName = freezed,
    Object? insuranceTypeId = freezed,
    Object? status = freezed,
    Object? opportunityCreatedBy = freezed,
    Object? creationDateTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      assignedAgent: assignedAgent == freezed
          ? _value.assignedAgent
          : assignedAgent // ignore: cast_nullable_to_non_nullable
              as User?,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      insuranceName: insuranceName == freezed
          ? _value.insuranceName
          : insuranceName // ignore: cast_nullable_to_non_nullable
              as String?,
      insuranceTypeId: insuranceTypeId == freezed
          ? _value.insuranceTypeId
          : insuranceTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      opportunityCreatedBy: opportunityCreatedBy == freezed
          ? _value.opportunityCreatedBy
          : opportunityCreatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDateTimeStamp: creationDateTimeStamp == freezed
          ? _value.creationDateTimeStamp
          : creationDateTimeStamp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $ContactCopyWith<$Res>? get contact {
    if (_value.contact == null) {
      return null;
    }

    return $ContactCopyWith<$Res>(_value.contact!, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get assignedAgent {
    if (_value.assignedAgent == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.assignedAgent!, (value) {
      return _then(_value.copyWith(assignedAgent: value));
    });
  }
}

/// @nodoc
abstract class _$$_OpportunityCopyWith<$Res>
    implements $OpportunityCopyWith<$Res> {
  factory _$$_OpportunityCopyWith(
          _$_Opportunity value, $Res Function(_$_Opportunity) then) =
      __$$_OpportunityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      Contact? contact,
      User? assignedAgent,
      String? creationDate,
      String? insuranceName,
      int? insuranceTypeId,
      String status,
      String? opportunityCreatedBy,
      double creationDateTimeStamp});

  @override
  $ContactCopyWith<$Res>? get contact;
  @override
  $UserCopyWith<$Res>? get assignedAgent;
}

/// @nodoc
class __$$_OpportunityCopyWithImpl<$Res> extends _$OpportunityCopyWithImpl<$Res>
    implements _$$_OpportunityCopyWith<$Res> {
  __$$_OpportunityCopyWithImpl(
      _$_Opportunity _value, $Res Function(_$_Opportunity) _then)
      : super(_value, (v) => _then(v as _$_Opportunity));

  @override
  _$_Opportunity get _value => super._value as _$_Opportunity;

  @override
  $Res call({
    Object? id = freezed,
    Object? contact = freezed,
    Object? assignedAgent = freezed,
    Object? creationDate = freezed,
    Object? insuranceName = freezed,
    Object? insuranceTypeId = freezed,
    Object? status = freezed,
    Object? opportunityCreatedBy = freezed,
    Object? creationDateTimeStamp = freezed,
  }) {
    return _then(_$_Opportunity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      assignedAgent: assignedAgent == freezed
          ? _value.assignedAgent
          : assignedAgent // ignore: cast_nullable_to_non_nullable
              as User?,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      insuranceName: insuranceName == freezed
          ? _value.insuranceName
          : insuranceName // ignore: cast_nullable_to_non_nullable
              as String?,
      insuranceTypeId: insuranceTypeId == freezed
          ? _value.insuranceTypeId
          : insuranceTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      opportunityCreatedBy: opportunityCreatedBy == freezed
          ? _value.opportunityCreatedBy
          : opportunityCreatedBy // ignore: cast_nullable_to_non_nullable
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
class _$_Opportunity implements _Opportunity {
  const _$_Opportunity(
      {required this.id,
      this.contact,
      this.assignedAgent,
      this.creationDate,
      this.insuranceName,
      this.insuranceTypeId,
      this.status = "",
      this.opportunityCreatedBy,
      this.creationDateTimeStamp = 0});

  factory _$_Opportunity.fromJson(Map<String, dynamic> json) =>
      _$$_OpportunityFromJson(json);

  @override
  final int id;
  @override
  final Contact? contact;
  @override
  final User? assignedAgent;
  @override
  final String? creationDate;
  @override
  final String? insuranceName;
  @override
  final int? insuranceTypeId;
  @override
  @JsonKey()
  final String status;
  @override
  final String? opportunityCreatedBy;
  @override
  @JsonKey()
  final double creationDateTimeStamp;

  @override
  String toString() {
    return 'Opportunity(id: $id, contact: $contact, assignedAgent: $assignedAgent, creationDate: $creationDate, insuranceName: $insuranceName, insuranceTypeId: $insuranceTypeId, status: $status, opportunityCreatedBy: $opportunityCreatedBy, creationDateTimeStamp: $creationDateTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Opportunity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.contact, contact) &&
            const DeepCollectionEquality()
                .equals(other.assignedAgent, assignedAgent) &&
            const DeepCollectionEquality()
                .equals(other.creationDate, creationDate) &&
            const DeepCollectionEquality()
                .equals(other.insuranceName, insuranceName) &&
            const DeepCollectionEquality()
                .equals(other.insuranceTypeId, insuranceTypeId) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.opportunityCreatedBy, opportunityCreatedBy) &&
            const DeepCollectionEquality()
                .equals(other.creationDateTimeStamp, creationDateTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(contact),
      const DeepCollectionEquality().hash(assignedAgent),
      const DeepCollectionEquality().hash(creationDate),
      const DeepCollectionEquality().hash(insuranceName),
      const DeepCollectionEquality().hash(insuranceTypeId),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(opportunityCreatedBy),
      const DeepCollectionEquality().hash(creationDateTimeStamp));

  @JsonKey(ignore: true)
  @override
  _$$_OpportunityCopyWith<_$_Opportunity> get copyWith =>
      __$$_OpportunityCopyWithImpl<_$_Opportunity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpportunityToJson(this);
  }
}

abstract class _Opportunity implements Opportunity {
  const factory _Opportunity(
      {required final int id,
      final Contact? contact,
      final User? assignedAgent,
      final String? creationDate,
      final String? insuranceName,
      final int? insuranceTypeId,
      final String status,
      final String? opportunityCreatedBy,
      final double creationDateTimeStamp}) = _$_Opportunity;

  factory _Opportunity.fromJson(Map<String, dynamic> json) =
      _$_Opportunity.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  Contact? get contact => throw _privateConstructorUsedError;
  @override
  User? get assignedAgent => throw _privateConstructorUsedError;
  @override
  String? get creationDate => throw _privateConstructorUsedError;
  @override
  String? get insuranceName => throw _privateConstructorUsedError;
  @override
  int? get insuranceTypeId => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String? get opportunityCreatedBy => throw _privateConstructorUsedError;
  @override
  double get creationDateTimeStamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OpportunityCopyWith<_$_Opportunity> get copyWith =>
      throw _privateConstructorUsedError;
}
