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
mixin _$CoinEvent {
  String get currency => throw _privateConstructorUsedError;
  String get order => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  String get sparkline => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currency, String order, int pageNumber,
            int perPage, String sparkline)
        getMarketCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String currency, String order, int pageNumber, int perPage,
            String sparkline)?
        getMarketCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currency, String order, int pageNumber, int perPage,
            String sparkline)?
        getMarketCoins,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMarketCoinsEvent value) getMarketCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMarketCoinsEvent value)? getMarketCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMarketCoinsEvent value)? getMarketCoins,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoinEventCopyWith<CoinEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinEventCopyWith<$Res> {
  factory $CoinEventCopyWith(CoinEvent value, $Res Function(CoinEvent) then) =
      _$CoinEventCopyWithImpl<$Res>;
  $Res call(
      {String currency,
      String order,
      int pageNumber,
      int perPage,
      String sparkline});
}

/// @nodoc
class _$CoinEventCopyWithImpl<$Res> implements $CoinEventCopyWith<$Res> {
  _$CoinEventCopyWithImpl(this._value, this._then);

  final CoinEvent _value;
  // ignore: unused_field
  final $Res Function(CoinEvent) _then;

  @override
  $Res call({
    Object? currency = freezed,
    Object? order = freezed,
    Object? pageNumber = freezed,
    Object? perPage = freezed,
    Object? sparkline = freezed,
  }) {
    return _then(_value.copyWith(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
      pageNumber: pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      sparkline: sparkline == freezed
          ? _value.sparkline
          : sparkline // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$GetMarketCoinsEventCopyWith<$Res>
    implements $CoinEventCopyWith<$Res> {
  factory _$$GetMarketCoinsEventCopyWith(_$GetMarketCoinsEvent value,
          $Res Function(_$GetMarketCoinsEvent) then) =
      __$$GetMarketCoinsEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {String currency,
      String order,
      int pageNumber,
      int perPage,
      String sparkline});
}

/// @nodoc
class __$$GetMarketCoinsEventCopyWithImpl<$Res>
    extends _$CoinEventCopyWithImpl<$Res>
    implements _$$GetMarketCoinsEventCopyWith<$Res> {
  __$$GetMarketCoinsEventCopyWithImpl(
      _$GetMarketCoinsEvent _value, $Res Function(_$GetMarketCoinsEvent) _then)
      : super(_value, (v) => _then(v as _$GetMarketCoinsEvent));

  @override
  _$GetMarketCoinsEvent get _value => super._value as _$GetMarketCoinsEvent;

  @override
  $Res call({
    Object? currency = freezed,
    Object? order = freezed,
    Object? pageNumber = freezed,
    Object? perPage = freezed,
    Object? sparkline = freezed,
  }) {
    return _then(_$GetMarketCoinsEvent(
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
      pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      sparkline == freezed
          ? _value.sparkline
          : sparkline // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMarketCoinsEvent extends GetMarketCoinsEvent {
  const _$GetMarketCoinsEvent(
      this.currency, this.order, this.pageNumber, this.perPage, this.sparkline)
      : super._();

  @override
  final String currency;
  @override
  final String order;
  @override
  final int pageNumber;
  @override
  final int perPage;
  @override
  final String sparkline;

  @override
  String toString() {
    return 'CoinEvent.getMarketCoins(currency: $currency, order: $order, pageNumber: $pageNumber, perPage: $perPage, sparkline: $sparkline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMarketCoinsEvent &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality()
                .equals(other.pageNumber, pageNumber) &&
            const DeepCollectionEquality().equals(other.perPage, perPage) &&
            const DeepCollectionEquality().equals(other.sparkline, sparkline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(pageNumber),
      const DeepCollectionEquality().hash(perPage),
      const DeepCollectionEquality().hash(sparkline));

  @JsonKey(ignore: true)
  @override
  _$$GetMarketCoinsEventCopyWith<_$GetMarketCoinsEvent> get copyWith =>
      __$$GetMarketCoinsEventCopyWithImpl<_$GetMarketCoinsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currency, String order, int pageNumber,
            int perPage, String sparkline)
        getMarketCoins,
  }) {
    return getMarketCoins(currency, order, pageNumber, perPage, sparkline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String currency, String order, int pageNumber, int perPage,
            String sparkline)?
        getMarketCoins,
  }) {
    return getMarketCoins?.call(
        currency, order, pageNumber, perPage, sparkline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currency, String order, int pageNumber, int perPage,
            String sparkline)?
        getMarketCoins,
    required TResult orElse(),
  }) {
    if (getMarketCoins != null) {
      return getMarketCoins(currency, order, pageNumber, perPage, sparkline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMarketCoinsEvent value) getMarketCoins,
  }) {
    return getMarketCoins(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMarketCoinsEvent value)? getMarketCoins,
  }) {
    return getMarketCoins?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMarketCoinsEvent value)? getMarketCoins,
    required TResult orElse(),
  }) {
    if (getMarketCoins != null) {
      return getMarketCoins(this);
    }
    return orElse();
  }
}

abstract class GetMarketCoinsEvent extends CoinEvent {
  const factory GetMarketCoinsEvent(
      final String currency,
      final String order,
      final int pageNumber,
      final int perPage,
      final String sparkline) = _$GetMarketCoinsEvent;
  const GetMarketCoinsEvent._() : super._();

  @override
  String get currency;
  @override
  String get order;
  @override
  int get pageNumber;
  @override
  int get perPage;
  @override
  String get sparkline;
  @override
  @JsonKey(ignore: true)
  _$$GetMarketCoinsEventCopyWith<_$GetMarketCoinsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
