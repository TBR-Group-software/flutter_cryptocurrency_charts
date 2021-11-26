// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GlobalDataEventTearOff {
  const _$GlobalDataEventTearOff();

  GetGlobalDataEvent getGlobalData() {
    return const GetGlobalDataEvent();
  }
}

/// @nodoc
const $GlobalDataEvent = _$GlobalDataEventTearOff();

/// @nodoc
mixin _$GlobalDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGlobalData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getGlobalData,
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
    TResult Function(GetGlobalDataEvent value)? getGlobalData,
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
      _$GlobalDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GlobalDataEventCopyWithImpl<$Res>
    implements $GlobalDataEventCopyWith<$Res> {
  _$GlobalDataEventCopyWithImpl(this._value, this._then);

  final GlobalDataEvent _value;
  // ignore: unused_field
  final $Res Function(GlobalDataEvent) _then;
}

/// @nodoc
abstract class $GetGlobalDataEventCopyWith<$Res> {
  factory $GetGlobalDataEventCopyWith(
          GetGlobalDataEvent value, $Res Function(GetGlobalDataEvent) then) =
      _$GetGlobalDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetGlobalDataEventCopyWithImpl<$Res>
    extends _$GlobalDataEventCopyWithImpl<$Res>
    implements $GetGlobalDataEventCopyWith<$Res> {
  _$GetGlobalDataEventCopyWithImpl(
      GetGlobalDataEvent _value, $Res Function(GetGlobalDataEvent) _then)
      : super(_value, (v) => _then(v as GetGlobalDataEvent));

  @override
  GetGlobalDataEvent get _value => super._value as GetGlobalDataEvent;
}

/// @nodoc

class _$GetGlobalDataEvent extends GetGlobalDataEvent {
  const _$GetGlobalDataEvent() : super._();

  @override
  String toString() {
    return 'GlobalDataEvent.getGlobalData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetGlobalDataEvent);
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
    TResult Function()? getGlobalData,
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
    TResult Function(GetGlobalDataEvent value)? getGlobalData,
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
  const factory GetGlobalDataEvent() = _$GetGlobalDataEvent;
  const GetGlobalDataEvent._() : super._();
}
