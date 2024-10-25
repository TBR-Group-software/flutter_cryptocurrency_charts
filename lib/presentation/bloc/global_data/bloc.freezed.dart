// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GlobalDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGlobalData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getGlobalData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGlobalData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGlobalDataEvent value) getGlobalData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGlobalDataEvent value)? getGlobalData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGlobalDataEvent value)? getGlobalData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalDataEventCopyWith<$Res> {
  factory $GlobalDataEventCopyWith(
          GlobalDataEvent value, $Res Function(GlobalDataEvent) then) =
      _$GlobalDataEventCopyWithImpl<$Res, GlobalDataEvent>;
}

/// @nodoc
class _$GlobalDataEventCopyWithImpl<$Res, $Val extends GlobalDataEvent>
    implements $GlobalDataEventCopyWith<$Res> {
  _$GlobalDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GlobalDataEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetGlobalDataEventImplCopyWith<$Res> {
  factory _$$GetGlobalDataEventImplCopyWith(_$GetGlobalDataEventImpl value,
          $Res Function(_$GetGlobalDataEventImpl) then) =
      __$$GetGlobalDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetGlobalDataEventImplCopyWithImpl<$Res>
    extends _$GlobalDataEventCopyWithImpl<$Res, _$GetGlobalDataEventImpl>
    implements _$$GetGlobalDataEventImplCopyWith<$Res> {
  __$$GetGlobalDataEventImplCopyWithImpl(_$GetGlobalDataEventImpl _value,
      $Res Function(_$GetGlobalDataEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GlobalDataEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetGlobalDataEventImpl extends GetGlobalDataEvent {
  const _$GetGlobalDataEventImpl() : super._();

  @override
  String toString() {
    return 'GlobalDataEvent.getGlobalData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetGlobalDataEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGlobalData,
  }) {
    return getGlobalData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getGlobalData,
  }) {
    return getGlobalData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGlobalData,
    required TResult orElse(),
  }) {
    if (getGlobalData != null) {
      return getGlobalData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGlobalDataEvent value) getGlobalData,
  }) {
    return getGlobalData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGlobalDataEvent value)? getGlobalData,
  }) {
    return getGlobalData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGlobalDataEvent value)? getGlobalData,
    required TResult orElse(),
  }) {
    if (getGlobalData != null) {
      return getGlobalData(this);
    }
    return orElse();
  }
}

abstract class GetGlobalDataEvent extends GlobalDataEvent {
  const factory GetGlobalDataEvent() = _$GetGlobalDataEventImpl;
  const GetGlobalDataEvent._() : super._();
}

/// @nodoc
mixin _$GlobalDataState {
  BlocStatus get status => throw _privateConstructorUsedError;
  GlobalData? get globalData => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  /// Create a copy of GlobalDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GlobalDataStateCopyWith<GlobalDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalDataStateCopyWith<$Res> {
  factory $GlobalDataStateCopyWith(
          GlobalDataState value, $Res Function(GlobalDataState) then) =
      _$GlobalDataStateCopyWithImpl<$Res, GlobalDataState>;
  @useResult
  $Res call({BlocStatus status, GlobalData? globalData, Object? error});
}

/// @nodoc
class _$GlobalDataStateCopyWithImpl<$Res, $Val extends GlobalDataState>
    implements $GlobalDataStateCopyWith<$Res> {
  _$GlobalDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GlobalDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? globalData = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      globalData: freezed == globalData
          ? _value.globalData
          : globalData // ignore: cast_nullable_to_non_nullable
              as GlobalData?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GlobalDataStateImplCopyWith<$Res>
    implements $GlobalDataStateCopyWith<$Res> {
  factory _$$GlobalDataStateImplCopyWith(_$GlobalDataStateImpl value,
          $Res Function(_$GlobalDataStateImpl) then) =
      __$$GlobalDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status, GlobalData? globalData, Object? error});
}

/// @nodoc
class __$$GlobalDataStateImplCopyWithImpl<$Res>
    extends _$GlobalDataStateCopyWithImpl<$Res, _$GlobalDataStateImpl>
    implements _$$GlobalDataStateImplCopyWith<$Res> {
  __$$GlobalDataStateImplCopyWithImpl(
      _$GlobalDataStateImpl _value, $Res Function(_$GlobalDataStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GlobalDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? globalData = freezed,
    Object? error = freezed,
  }) {
    return _then(_$GlobalDataStateImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      freezed == globalData
          ? _value.globalData
          : globalData // ignore: cast_nullable_to_non_nullable
              as GlobalData?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$GlobalDataStateImpl implements _GlobalDataState {
  const _$GlobalDataStateImpl(this.status, this.globalData, {this.error});

  @override
  final BlocStatus status;
  @override
  final GlobalData? globalData;
  @override
  final Object? error;

  @override
  String toString() {
    return 'GlobalDataState(status: $status, globalData: $globalData, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlobalDataStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.globalData, globalData) ||
                other.globalData == globalData) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, globalData,
      const DeepCollectionEquality().hash(error));

  /// Create a copy of GlobalDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GlobalDataStateImplCopyWith<_$GlobalDataStateImpl> get copyWith =>
      __$$GlobalDataStateImplCopyWithImpl<_$GlobalDataStateImpl>(
          this, _$identity);
}

abstract class _GlobalDataState implements GlobalDataState {
  const factory _GlobalDataState(
      final BlocStatus status, final GlobalData? globalData,
      {final Object? error}) = _$GlobalDataStateImpl;

  @override
  BlocStatus get status;
  @override
  GlobalData? get globalData;
  @override
  Object? get error;

  /// Create a copy of GlobalDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GlobalDataStateImplCopyWith<_$GlobalDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
