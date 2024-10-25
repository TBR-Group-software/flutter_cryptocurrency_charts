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
    TResult? Function(String currency, String order, int pageNumber,
            int perPage, String sparkline)?
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
    TResult? Function(GetMarketCoinsEvent value)? getMarketCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMarketCoinsEvent value)? getMarketCoins,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoinEventCopyWith<CoinEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinEventCopyWith<$Res> {
  factory $CoinEventCopyWith(CoinEvent value, $Res Function(CoinEvent) then) =
      _$CoinEventCopyWithImpl<$Res, CoinEvent>;
  @useResult
  $Res call(
      {String currency,
      String order,
      int pageNumber,
      int perPage,
      String sparkline});
}

/// @nodoc
class _$CoinEventCopyWithImpl<$Res, $Val extends CoinEvent>
    implements $CoinEventCopyWith<$Res> {
  _$CoinEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? order = null,
    Object? pageNumber = null,
    Object? perPage = null,
    Object? sparkline = null,
  }) {
    return _then(_value.copyWith(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      sparkline: null == sparkline
          ? _value.sparkline
          : sparkline // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMarketCoinsEventImplCopyWith<$Res>
    implements $CoinEventCopyWith<$Res> {
  factory _$$GetMarketCoinsEventImplCopyWith(_$GetMarketCoinsEventImpl value,
          $Res Function(_$GetMarketCoinsEventImpl) then) =
      __$$GetMarketCoinsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String currency,
      String order,
      int pageNumber,
      int perPage,
      String sparkline});
}

/// @nodoc
class __$$GetMarketCoinsEventImplCopyWithImpl<$Res>
    extends _$CoinEventCopyWithImpl<$Res, _$GetMarketCoinsEventImpl>
    implements _$$GetMarketCoinsEventImplCopyWith<$Res> {
  __$$GetMarketCoinsEventImplCopyWithImpl(_$GetMarketCoinsEventImpl _value,
      $Res Function(_$GetMarketCoinsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? order = null,
    Object? pageNumber = null,
    Object? perPage = null,
    Object? sparkline = null,
  }) {
    return _then(_$GetMarketCoinsEventImpl(
      null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
      null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      null == sparkline
          ? _value.sparkline
          : sparkline // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMarketCoinsEventImpl extends GetMarketCoinsEvent {
  const _$GetMarketCoinsEventImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMarketCoinsEventImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.sparkline, sparkline) ||
                other.sparkline == sparkline));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currency, order, pageNumber, perPage, sparkline);

  /// Create a copy of CoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMarketCoinsEventImplCopyWith<_$GetMarketCoinsEventImpl> get copyWith =>
      __$$GetMarketCoinsEventImplCopyWithImpl<_$GetMarketCoinsEventImpl>(
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
    TResult? Function(String currency, String order, int pageNumber,
            int perPage, String sparkline)?
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
    TResult? Function(GetMarketCoinsEvent value)? getMarketCoins,
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
      final String sparkline) = _$GetMarketCoinsEventImpl;
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

  /// Create a copy of CoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMarketCoinsEventImplCopyWith<_$GetMarketCoinsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoinState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<Coin> get coins => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  /// Create a copy of CoinState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoinStateCopyWith<CoinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinStateCopyWith<$Res> {
  factory $CoinStateCopyWith(CoinState value, $Res Function(CoinState) then) =
      _$CoinStateCopyWithImpl<$Res, CoinState>;
  @useResult
  $Res call({BlocStatus status, List<Coin> coins, Object? error});
}

/// @nodoc
class _$CoinStateCopyWithImpl<$Res, $Val extends CoinState>
    implements $CoinStateCopyWith<$Res> {
  _$CoinStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoinState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? coins = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<Coin>,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinStateImplCopyWith<$Res>
    implements $CoinStateCopyWith<$Res> {
  factory _$$CoinStateImplCopyWith(
          _$CoinStateImpl value, $Res Function(_$CoinStateImpl) then) =
      __$$CoinStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status, List<Coin> coins, Object? error});
}

/// @nodoc
class __$$CoinStateImplCopyWithImpl<$Res>
    extends _$CoinStateCopyWithImpl<$Res, _$CoinStateImpl>
    implements _$$CoinStateImplCopyWith<$Res> {
  __$$CoinStateImplCopyWithImpl(
      _$CoinStateImpl _value, $Res Function(_$CoinStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoinState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? coins = null,
    Object? error = freezed,
  }) {
    return _then(_$CoinStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      coins: null == coins
          ? _value._coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<Coin>,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$CoinStateImpl implements _CoinState {
  const _$CoinStateImpl(
      {required this.status, required final List<Coin> coins, this.error})
      : _coins = coins;

  @override
  final BlocStatus status;
  final List<Coin> _coins;
  @override
  List<Coin> get coins {
    if (_coins is EqualUnmodifiableListView) return _coins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coins);
  }

  @override
  final Object? error;

  @override
  String toString() {
    return 'CoinState(status: $status, coins: $coins, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._coins, _coins) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_coins),
      const DeepCollectionEquality().hash(error));

  /// Create a copy of CoinState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinStateImplCopyWith<_$CoinStateImpl> get copyWith =>
      __$$CoinStateImplCopyWithImpl<_$CoinStateImpl>(this, _$identity);
}

abstract class _CoinState implements CoinState {
  const factory _CoinState(
      {required final BlocStatus status,
      required final List<Coin> coins,
      final Object? error}) = _$CoinStateImpl;

  @override
  BlocStatus get status;
  @override
  List<Coin> get coins;
  @override
  Object? get error;

  /// Create a copy of CoinState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoinStateImplCopyWith<_$CoinStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
