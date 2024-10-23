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
mixin _$TrendingCoinEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTrendingCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrendingCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrendingCoins,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTrendingCoinsEvent value) getTrendingCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTrendingCoinsEvent value)? getTrendingCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTrendingCoinsEvent value)? getTrendingCoins,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingCoinEventCopyWith<$Res> {
  factory $TrendingCoinEventCopyWith(
          TrendingCoinEvent value, $Res Function(TrendingCoinEvent) then) =
      _$TrendingCoinEventCopyWithImpl<$Res, TrendingCoinEvent>;
}

/// @nodoc
class _$TrendingCoinEventCopyWithImpl<$Res, $Val extends TrendingCoinEvent>
    implements $TrendingCoinEventCopyWith<$Res> {
  _$TrendingCoinEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrendingCoinEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetTrendingCoinsEventImplCopyWith<$Res> {
  factory _$$GetTrendingCoinsEventImplCopyWith(
          _$GetTrendingCoinsEventImpl value,
          $Res Function(_$GetTrendingCoinsEventImpl) then) =
      __$$GetTrendingCoinsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTrendingCoinsEventImplCopyWithImpl<$Res>
    extends _$TrendingCoinEventCopyWithImpl<$Res, _$GetTrendingCoinsEventImpl>
    implements _$$GetTrendingCoinsEventImplCopyWith<$Res> {
  __$$GetTrendingCoinsEventImplCopyWithImpl(_$GetTrendingCoinsEventImpl _value,
      $Res Function(_$GetTrendingCoinsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrendingCoinEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetTrendingCoinsEventImpl extends GetTrendingCoinsEvent {
  const _$GetTrendingCoinsEventImpl() : super._();

  @override
  String toString() {
    return 'TrendingCoinEvent.getTrendingCoins()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTrendingCoinsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTrendingCoins,
  }) {
    return getTrendingCoins();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrendingCoins,
  }) {
    return getTrendingCoins?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrendingCoins,
    required TResult orElse(),
  }) {
    if (getTrendingCoins != null) {
      return getTrendingCoins();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTrendingCoinsEvent value) getTrendingCoins,
  }) {
    return getTrendingCoins(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTrendingCoinsEvent value)? getTrendingCoins,
  }) {
    return getTrendingCoins?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTrendingCoinsEvent value)? getTrendingCoins,
    required TResult orElse(),
  }) {
    if (getTrendingCoins != null) {
      return getTrendingCoins(this);
    }
    return orElse();
  }
}

abstract class GetTrendingCoinsEvent extends TrendingCoinEvent {
  const factory GetTrendingCoinsEvent() = _$GetTrendingCoinsEventImpl;
  const GetTrendingCoinsEvent._() : super._();
}
