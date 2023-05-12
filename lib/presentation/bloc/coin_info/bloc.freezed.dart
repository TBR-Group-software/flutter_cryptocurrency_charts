// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoinInfoEvent {
  String get coinId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String coinId) getCoinInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String coinId)? getCoinInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String coinId)? getCoinInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCoinInfoEvent value) getCoinInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCoinInfoEvent value)? getCoinInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCoinInfoEvent value)? getCoinInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoinInfoEventCopyWith<CoinInfoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinInfoEventCopyWith<$Res> {
  factory $CoinInfoEventCopyWith(
          CoinInfoEvent value, $Res Function(CoinInfoEvent) then) =
      _$CoinInfoEventCopyWithImpl<$Res>;
  $Res call({String coinId});
}

/// @nodoc
class _$CoinInfoEventCopyWithImpl<$Res>
    implements $CoinInfoEventCopyWith<$Res> {
  _$CoinInfoEventCopyWithImpl(this._value, this._then);

  final CoinInfoEvent _value;
  // ignore: unused_field
  final $Res Function(CoinInfoEvent) _then;

  @override
  $Res call({
    Object? coinId = freezed,
  }) {
    return _then(_value.copyWith(
      coinId: coinId == freezed
          ? _value.coinId
          : coinId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$GetCoinInfoEventCopyWith<$Res>
    implements $CoinInfoEventCopyWith<$Res> {
  factory _$$GetCoinInfoEventCopyWith(
          _$GetCoinInfoEvent value, $Res Function(_$GetCoinInfoEvent) then) =
      __$$GetCoinInfoEventCopyWithImpl<$Res>;
  @override
  $Res call({String coinId});
}

/// @nodoc
class __$$GetCoinInfoEventCopyWithImpl<$Res>
    extends _$CoinInfoEventCopyWithImpl<$Res>
    implements _$$GetCoinInfoEventCopyWith<$Res> {
  __$$GetCoinInfoEventCopyWithImpl(
      _$GetCoinInfoEvent _value, $Res Function(_$GetCoinInfoEvent) _then)
      : super(_value, (v) => _then(v as _$GetCoinInfoEvent));

  @override
  _$GetCoinInfoEvent get _value => super._value as _$GetCoinInfoEvent;

  @override
  $Res call({
    Object? coinId = freezed,
  }) {
    return _then(_$GetCoinInfoEvent(
      coinId == freezed
          ? _value.coinId
          : coinId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCoinInfoEvent extends GetCoinInfoEvent {
  const _$GetCoinInfoEvent(this.coinId) : super._();

  @override
  final String coinId;

  @override
  String toString() {
    return 'CoinInfoEvent.getCoinInfo(coinId: $coinId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCoinInfoEvent &&
            const DeepCollectionEquality().equals(other.coinId, coinId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(coinId));

  @JsonKey(ignore: true)
  @override
  _$$GetCoinInfoEventCopyWith<_$GetCoinInfoEvent> get copyWith =>
      __$$GetCoinInfoEventCopyWithImpl<_$GetCoinInfoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String coinId) getCoinInfo,
  }) {
    return getCoinInfo(coinId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String coinId)? getCoinInfo,
  }) {
    return getCoinInfo?.call(coinId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String coinId)? getCoinInfo,
    required TResult orElse(),
  }) {
    if (getCoinInfo != null) {
      return getCoinInfo(coinId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCoinInfoEvent value) getCoinInfo,
  }) {
    return getCoinInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCoinInfoEvent value)? getCoinInfo,
  }) {
    return getCoinInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCoinInfoEvent value)? getCoinInfo,
    required TResult orElse(),
  }) {
    if (getCoinInfo != null) {
      return getCoinInfo(this);
    }
    return orElse();
  }
}

abstract class GetCoinInfoEvent extends CoinInfoEvent {
  const factory GetCoinInfoEvent(final String coinId) = _$GetCoinInfoEvent;
  const GetCoinInfoEvent._() : super._();

  @override
  String get coinId;
  @override
  @JsonKey(ignore: true)
  _$$GetCoinInfoEventCopyWith<_$GetCoinInfoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
