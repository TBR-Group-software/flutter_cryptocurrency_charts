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
class _$CoinEventTearOff {
  const _$CoinEventTearOff();

  GetMarketCoinsEvent getMarketCoins(String currency, String order,
      int pageNumber, int perPage, String sparkline) {
    return GetMarketCoinsEvent(
      currency,
      order,
      pageNumber,
      perPage,
      sparkline,
    );
  }

  GetNextMarketCoinsEvent getNextMarketCoins(String currency, String order,
      int pageNumber, int perPage, String sparkline) {
    return GetNextMarketCoinsEvent(
      currency,
      order,
      pageNumber,
      perPage,
      sparkline,
    );
  }
}

/// @nodoc
const $CoinEvent = _$CoinEventTearOff();

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
    required TResult Function(String currency, String order, int pageNumber,
            int perPage, String sparkline)
        getNextMarketCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String currency, String order, int pageNumber, int perPage,
            String sparkline)?
        getMarketCoins,
    TResult Function(String currency, String order, int pageNumber, int perPage,
            String sparkline)?
        getNextMarketCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currency, String order, int pageNumber, int perPage,
            String sparkline)?
        getMarketCoins,
    TResult Function(String currency, String order, int pageNumber, int perPage,
            String sparkline)?
        getNextMarketCoins,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMarketCoinsEvent value) getMarketCoins,
    required TResult Function(GetNextMarketCoinsEvent value) getNextMarketCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMarketCoinsEvent value)? getMarketCoins,
    TResult Function(GetNextMarketCoinsEvent value)? getNextMarketCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMarketCoinsEvent value)? getMarketCoins,
    TResult Function(GetNextMarketCoinsEvent value)? getNextMarketCoins,
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
abstract class $GetMarketCoinsEventCopyWith<$Res>
    implements $CoinEventCopyWith<$Res> {
  factory $GetMarketCoinsEventCopyWith(
          GetMarketCoinsEvent value, $Res Function(GetMarketCoinsEvent) then) =
      _$GetMarketCoinsEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {String currency,
      String order,
      int pageNumber,
      int perPage,
      String sparkline});
}

/// @nodoc
class _$GetMarketCoinsEventCopyWithImpl<$Res>
    extends _$CoinEventCopyWithImpl<$Res>
    implements $GetMarketCoinsEventCopyWith<$Res> {
  _$GetMarketCoinsEventCopyWithImpl(
      GetMarketCoinsEvent _value, $Res Function(GetMarketCoinsEvent) _then)
      : super(_value, (v) => _then(v as GetMarketCoinsEvent));

  @override
  GetMarketCoinsEvent get _value => super._value as GetMarketCoinsEvent;

  @override
  $Res call({
    Object? currency = freezed,
    Object? order = freezed,
    Object? pageNumber = freezed,
    Object? perPage = freezed,
    Object? sparkline = freezed,
  }) {
    return _then(GetMarketCoinsEvent(
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
        (other is GetMarketCoinsEvent &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.perPage, perPage) ||
                const DeepCollectionEquality()
                    .equals(other.perPage, perPage)) &&
            (identical(other.sparkline, sparkline) ||
                const DeepCollectionEquality()
                    .equals(other.sparkline, sparkline)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(perPage) ^
      const DeepCollectionEquality().hash(sparkline);

  @JsonKey(ignore: true)
  @override
  $GetMarketCoinsEventCopyWith<GetMarketCoinsEvent> get copyWith =>
      _$GetMarketCoinsEventCopyWithImpl<GetMarketCoinsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currency, String order, int pageNumber,
            int perPage, String sparkline)
        getMarketCoins,
    required TResult Function(String currency, String order, int pageNumber,
            int perPage, String sparkline)
        getNextMarketCoins,
  }) {
    return getMarketCoins(currency, order, pageNumber, perPage, sparkline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String currency, String order, int pageNumber, int perPage,
            String sparkline)?
        getMarketCoins,
    TResult Function(String currency, String order, int pageNumber, int perPage,
            String sparkline)?
        getNextMarketCoins,
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
    TResult Function(String currency, String order, int pageNumber, int perPage,
            String sparkline)?
        getNextMarketCoins,
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
    required TResult Function(GetNextMarketCoinsEvent value) getNextMarketCoins,
  }) {
    return getMarketCoins(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMarketCoinsEvent value)? getMarketCoins,
    TResult Function(GetNextMarketCoinsEvent value)? getNextMarketCoins,
  }) {
    return getMarketCoins?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMarketCoinsEvent value)? getMarketCoins,
    TResult Function(GetNextMarketCoinsEvent value)? getNextMarketCoins,
    required TResult orElse(),
  }) {
    if (getMarketCoins != null) {
      return getMarketCoins(this);
    }
    return orElse();
  }
}

abstract class GetMarketCoinsEvent extends CoinEvent {
  const factory GetMarketCoinsEvent(String currency, String order,
      int pageNumber, int perPage, String sparkline) = _$GetMarketCoinsEvent;
  const GetMarketCoinsEvent._() : super._();

  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  String get order => throw _privateConstructorUsedError;
  @override
  int get pageNumber => throw _privateConstructorUsedError;
  @override
  int get perPage => throw _privateConstructorUsedError;
  @override
  String get sparkline => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GetMarketCoinsEventCopyWith<GetMarketCoinsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNextMarketCoinsEventCopyWith<$Res>
    implements $CoinEventCopyWith<$Res> {
  factory $GetNextMarketCoinsEventCopyWith(GetNextMarketCoinsEvent value,
          $Res Function(GetNextMarketCoinsEvent) then) =
      _$GetNextMarketCoinsEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {String currency,
      String order,
      int pageNumber,
      int perPage,
      String sparkline});
}

/// @nodoc
class _$GetNextMarketCoinsEventCopyWithImpl<$Res>
    extends _$CoinEventCopyWithImpl<$Res>
    implements $GetNextMarketCoinsEventCopyWith<$Res> {
  _$GetNextMarketCoinsEventCopyWithImpl(GetNextMarketCoinsEvent _value,
      $Res Function(GetNextMarketCoinsEvent) _then)
      : super(_value, (v) => _then(v as GetNextMarketCoinsEvent));

  @override
  GetNextMarketCoinsEvent get _value => super._value as GetNextMarketCoinsEvent;

  @override
  $Res call({
    Object? currency = freezed,
    Object? order = freezed,
    Object? pageNumber = freezed,
    Object? perPage = freezed,
    Object? sparkline = freezed,
  }) {
    return _then(GetNextMarketCoinsEvent(
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

class _$GetNextMarketCoinsEvent extends GetNextMarketCoinsEvent {
  const _$GetNextMarketCoinsEvent(
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
    return 'CoinEvent.getNextMarketCoins(currency: $currency, order: $order, pageNumber: $pageNumber, perPage: $perPage, sparkline: $sparkline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetNextMarketCoinsEvent &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.perPage, perPage) ||
                const DeepCollectionEquality()
                    .equals(other.perPage, perPage)) &&
            (identical(other.sparkline, sparkline) ||
                const DeepCollectionEquality()
                    .equals(other.sparkline, sparkline)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(perPage) ^
      const DeepCollectionEquality().hash(sparkline);

  @JsonKey(ignore: true)
  @override
  $GetNextMarketCoinsEventCopyWith<GetNextMarketCoinsEvent> get copyWith =>
      _$GetNextMarketCoinsEventCopyWithImpl<GetNextMarketCoinsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currency, String order, int pageNumber,
            int perPage, String sparkline)
        getMarketCoins,
    required TResult Function(String currency, String order, int pageNumber,
            int perPage, String sparkline)
        getNextMarketCoins,
  }) {
    return getNextMarketCoins(currency, order, pageNumber, perPage, sparkline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String currency, String order, int pageNumber, int perPage,
            String sparkline)?
        getMarketCoins,
    TResult Function(String currency, String order, int pageNumber, int perPage,
            String sparkline)?
        getNextMarketCoins,
  }) {
    return getNextMarketCoins?.call(
        currency, order, pageNumber, perPage, sparkline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currency, String order, int pageNumber, int perPage,
            String sparkline)?
        getMarketCoins,
    TResult Function(String currency, String order, int pageNumber, int perPage,
            String sparkline)?
        getNextMarketCoins,
    required TResult orElse(),
  }) {
    if (getNextMarketCoins != null) {
      return getNextMarketCoins(
          currency, order, pageNumber, perPage, sparkline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMarketCoinsEvent value) getMarketCoins,
    required TResult Function(GetNextMarketCoinsEvent value) getNextMarketCoins,
  }) {
    return getNextMarketCoins(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMarketCoinsEvent value)? getMarketCoins,
    TResult Function(GetNextMarketCoinsEvent value)? getNextMarketCoins,
  }) {
    return getNextMarketCoins?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMarketCoinsEvent value)? getMarketCoins,
    TResult Function(GetNextMarketCoinsEvent value)? getNextMarketCoins,
    required TResult orElse(),
  }) {
    if (getNextMarketCoins != null) {
      return getNextMarketCoins(this);
    }
    return orElse();
  }
}

abstract class GetNextMarketCoinsEvent extends CoinEvent {
  const factory GetNextMarketCoinsEvent(
      String currency,
      String order,
      int pageNumber,
      int perPage,
      String sparkline) = _$GetNextMarketCoinsEvent;
  const GetNextMarketCoinsEvent._() : super._();

  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  String get order => throw _privateConstructorUsedError;
  @override
  int get pageNumber => throw _privateConstructorUsedError;
  @override
  int get perPage => throw _privateConstructorUsedError;
  @override
  String get sparkline => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GetNextMarketCoinsEventCopyWith<GetNextMarketCoinsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
