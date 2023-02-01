// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationState {
  List<NotificationData> get notifications =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFetchingNext => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;
  int get pageNo => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res>;
  $Res call(
      {List<NotificationData> notifications,
      bool isLoading,
      bool isFetchingNext,
      bool isLastPage,
      int pageNo,
      String? error});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  final NotificationState _value;
  // ignore: unused_field
  final $Res Function(NotificationState) _then;

  @override
  $Res call({
    Object? notifications = freezed,
    Object? isLoading = freezed,
    Object? isFetchingNext = freezed,
    Object? isLastPage = freezed,
    Object? pageNo = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationData>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingNext: isFetchingNext == freezed
          ? _value.isFetchingNext
          : isFetchingNext // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastPage: isLastPage == freezed
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      pageNo: pageNo == freezed
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_NotificationStateCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$_NotificationStateCopyWith(_$_NotificationState value,
          $Res Function(_$_NotificationState) then) =
      __$$_NotificationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<NotificationData> notifications,
      bool isLoading,
      bool isFetchingNext,
      bool isLastPage,
      int pageNo,
      String? error});
}

/// @nodoc
class __$$_NotificationStateCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements _$$_NotificationStateCopyWith<$Res> {
  __$$_NotificationStateCopyWithImpl(
      _$_NotificationState _value, $Res Function(_$_NotificationState) _then)
      : super(_value, (v) => _then(v as _$_NotificationState));

  @override
  _$_NotificationState get _value => super._value as _$_NotificationState;

  @override
  $Res call({
    Object? notifications = freezed,
    Object? isLoading = freezed,
    Object? isFetchingNext = freezed,
    Object? isLastPage = freezed,
    Object? pageNo = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_NotificationState(
      notifications: notifications == freezed
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationData>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingNext: isFetchingNext == freezed
          ? _value.isFetchingNext
          : isFetchingNext // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastPage: isLastPage == freezed
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      pageNo: pageNo == freezed
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NotificationState implements _NotificationState {
  const _$_NotificationState(
      {final List<NotificationData> notifications = const [],
      this.isLoading = false,
      this.isFetchingNext = false,
      this.isLastPage = false,
      this.pageNo = 0,
      this.error})
      : _notifications = notifications;

  final List<NotificationData> _notifications;
  @override
  @JsonKey()
  List<NotificationData> get notifications {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isFetchingNext;
  @override
  @JsonKey()
  final bool isLastPage;
  @override
  @JsonKey()
  final int pageNo;
  @override
  final String? error;

  @override
  String toString() {
    return 'NotificationState(notifications: $notifications, isLoading: $isLoading, isFetchingNext: $isFetchingNext, isLastPage: $isLastPage, pageNo: $pageNo, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationState &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isFetchingNext, isFetchingNext) &&
            const DeepCollectionEquality()
                .equals(other.isLastPage, isLastPage) &&
            const DeepCollectionEquality().equals(other.pageNo, pageNo) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notifications),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isFetchingNext),
      const DeepCollectionEquality().hash(isLastPage),
      const DeepCollectionEquality().hash(pageNo),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_NotificationStateCopyWith<_$_NotificationState> get copyWith =>
      __$$_NotificationStateCopyWithImpl<_$_NotificationState>(
          this, _$identity);
}

abstract class _NotificationState implements NotificationState {
  const factory _NotificationState(
      {final List<NotificationData> notifications,
      final bool isLoading,
      final bool isFetchingNext,
      final bool isLastPage,
      final int pageNo,
      final String? error}) = _$_NotificationState;

  @override
  List<NotificationData> get notifications =>
      throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isFetchingNext => throw _privateConstructorUsedError;
  @override
  bool get isLastPage => throw _privateConstructorUsedError;
  @override
  int get pageNo => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationStateCopyWith<_$_NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
