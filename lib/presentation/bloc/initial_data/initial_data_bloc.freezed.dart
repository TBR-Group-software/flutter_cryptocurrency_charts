// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initial_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InitialDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String order, int pageNumber, int perPage, String sparkline)
        getMarketCoins,
    required TResult Function() getGlobalData,
    required TResult Function() getFiatCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String order, int pageNumber, int perPage, String sparkline)?
        getMarketCoins,
    TResult? Function()? getGlobalData,
    TResult? Function()? getFiatCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String order, int pageNumber, int perPage, String sparkline)?
        getMarketCoins,
    TResult Function()? getGlobalData,
    TResult Function()? getFiatCurrency,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMarketCoinsEvent value) getMarketCoins,
    required TResult Function(GetGlobalDataEvent value) getGlobalData,
    required TResult Function(GetFiatCurrencyEvent value) getFiatCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMarketCoinsEvent value)? getMarketCoins,
    TResult? Function(GetGlobalDataEvent value)? getGlobalData,
    TResult? Function(GetFiatCurrencyEvent value)? getFiatCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMarketCoinsEvent value)? getMarketCoins,
    TResult Function(GetGlobalDataEvent value)? getGlobalData,
    TResult Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialDataEventCopyWith<$Res> {
  factory $InitialDataEventCopyWith(
          InitialDataEvent value, $Res Function(InitialDataEvent) then) =
      _$InitialDataEventCopyWithImpl<$Res, InitialDataEvent>;
}

/// @nodoc
class _$InitialDataEventCopyWithImpl<$Res, $Val extends InitialDataEvent>
    implements $InitialDataEventCopyWith<$Res> {
  _$InitialDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InitialDataEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetMarketCoinsEventImplCopyWith<$Res> {
  factory _$$GetMarketCoinsEventImplCopyWith(_$GetMarketCoinsEventImpl value,
          $Res Function(_$GetMarketCoinsEventImpl) then) =
      __$$GetMarketCoinsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String order, int pageNumber, int perPage, String sparkline});
}

/// @nodoc
class __$$GetMarketCoinsEventImplCopyWithImpl<$Res>
    extends _$InitialDataEventCopyWithImpl<$Res, _$GetMarketCoinsEventImpl>
    implements _$$GetMarketCoinsEventImplCopyWith<$Res> {
  __$$GetMarketCoinsEventImplCopyWithImpl(_$GetMarketCoinsEventImpl _value,
      $Res Function(_$GetMarketCoinsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitialDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? pageNumber = null,
    Object? perPage = null,
    Object? sparkline = null,
  }) {
    return _then(_$GetMarketCoinsEventImpl(
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
      this.order, this.pageNumber, this.perPage, this.sparkline)
      : super._();

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
    return 'InitialDataEvent.getMarketCoins(order: $order, pageNumber: $pageNumber, perPage: $perPage, sparkline: $sparkline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMarketCoinsEventImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.sparkline, sparkline) ||
                other.sparkline == sparkline));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, order, pageNumber, perPage, sparkline);

  /// Create a copy of InitialDataEvent
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
    required TResult Function(
            String order, int pageNumber, int perPage, String sparkline)
        getMarketCoins,
    required TResult Function() getGlobalData,
    required TResult Function() getFiatCurrency,
  }) {
    return getMarketCoins(order, pageNumber, perPage, sparkline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String order, int pageNumber, int perPage, String sparkline)?
        getMarketCoins,
    TResult? Function()? getGlobalData,
    TResult? Function()? getFiatCurrency,
  }) {
    return getMarketCoins?.call(order, pageNumber, perPage, sparkline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String order, int pageNumber, int perPage, String sparkline)?
        getMarketCoins,
    TResult Function()? getGlobalData,
    TResult Function()? getFiatCurrency,
    required TResult orElse(),
  }) {
    if (getMarketCoins != null) {
      return getMarketCoins(order, pageNumber, perPage, sparkline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMarketCoinsEvent value) getMarketCoins,
    required TResult Function(GetGlobalDataEvent value) getGlobalData,
    required TResult Function(GetFiatCurrencyEvent value) getFiatCurrency,
  }) {
    return getMarketCoins(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMarketCoinsEvent value)? getMarketCoins,
    TResult? Function(GetGlobalDataEvent value)? getGlobalData,
    TResult? Function(GetFiatCurrencyEvent value)? getFiatCurrency,
  }) {
    return getMarketCoins?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMarketCoinsEvent value)? getMarketCoins,
    TResult Function(GetGlobalDataEvent value)? getGlobalData,
    TResult Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    required TResult orElse(),
  }) {
    if (getMarketCoins != null) {
      return getMarketCoins(this);
    }
    return orElse();
  }
}

abstract class GetMarketCoinsEvent extends InitialDataEvent {
  const factory GetMarketCoinsEvent(final String order, final int pageNumber,
      final int perPage, final String sparkline) = _$GetMarketCoinsEventImpl;
  const GetMarketCoinsEvent._() : super._();

  String get order;
  int get pageNumber;
  int get perPage;
  String get sparkline;

  /// Create a copy of InitialDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMarketCoinsEventImplCopyWith<_$GetMarketCoinsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetGlobalDataEventImplCopyWith<$Res> {
  factory _$$GetGlobalDataEventImplCopyWith(_$GetGlobalDataEventImpl value,
          $Res Function(_$GetGlobalDataEventImpl) then) =
      __$$GetGlobalDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetGlobalDataEventImplCopyWithImpl<$Res>
    extends _$InitialDataEventCopyWithImpl<$Res, _$GetGlobalDataEventImpl>
    implements _$$GetGlobalDataEventImplCopyWith<$Res> {
  __$$GetGlobalDataEventImplCopyWithImpl(_$GetGlobalDataEventImpl _value,
      $Res Function(_$GetGlobalDataEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitialDataEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetGlobalDataEventImpl extends GetGlobalDataEvent {
  const _$GetGlobalDataEventImpl() : super._();

  @override
  String toString() {
    return 'InitialDataEvent.getGlobalData()';
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
    required TResult Function(
            String order, int pageNumber, int perPage, String sparkline)
        getMarketCoins,
    required TResult Function() getGlobalData,
    required TResult Function() getFiatCurrency,
  }) {
    return getGlobalData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String order, int pageNumber, int perPage, String sparkline)?
        getMarketCoins,
    TResult? Function()? getGlobalData,
    TResult? Function()? getFiatCurrency,
  }) {
    return getGlobalData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String order, int pageNumber, int perPage, String sparkline)?
        getMarketCoins,
    TResult Function()? getGlobalData,
    TResult Function()? getFiatCurrency,
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
    required TResult Function(GetMarketCoinsEvent value) getMarketCoins,
    required TResult Function(GetGlobalDataEvent value) getGlobalData,
    required TResult Function(GetFiatCurrencyEvent value) getFiatCurrency,
  }) {
    return getGlobalData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMarketCoinsEvent value)? getMarketCoins,
    TResult? Function(GetGlobalDataEvent value)? getGlobalData,
    TResult? Function(GetFiatCurrencyEvent value)? getFiatCurrency,
  }) {
    return getGlobalData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMarketCoinsEvent value)? getMarketCoins,
    TResult Function(GetGlobalDataEvent value)? getGlobalData,
    TResult Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    required TResult orElse(),
  }) {
    if (getGlobalData != null) {
      return getGlobalData(this);
    }
    return orElse();
  }
}

abstract class GetGlobalDataEvent extends InitialDataEvent {
  const factory GetGlobalDataEvent() = _$GetGlobalDataEventImpl;
  const GetGlobalDataEvent._() : super._();
}

/// @nodoc
abstract class _$$GetFiatCurrencyEventImplCopyWith<$Res> {
  factory _$$GetFiatCurrencyEventImplCopyWith(_$GetFiatCurrencyEventImpl value,
          $Res Function(_$GetFiatCurrencyEventImpl) then) =
      __$$GetFiatCurrencyEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFiatCurrencyEventImplCopyWithImpl<$Res>
    extends _$InitialDataEventCopyWithImpl<$Res, _$GetFiatCurrencyEventImpl>
    implements _$$GetFiatCurrencyEventImplCopyWith<$Res> {
  __$$GetFiatCurrencyEventImplCopyWithImpl(_$GetFiatCurrencyEventImpl _value,
      $Res Function(_$GetFiatCurrencyEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitialDataEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetFiatCurrencyEventImpl extends GetFiatCurrencyEvent {
  const _$GetFiatCurrencyEventImpl() : super._();

  @override
  String toString() {
    return 'InitialDataEvent.getFiatCurrency()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFiatCurrencyEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String order, int pageNumber, int perPage, String sparkline)
        getMarketCoins,
    required TResult Function() getGlobalData,
    required TResult Function() getFiatCurrency,
  }) {
    return getFiatCurrency();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String order, int pageNumber, int perPage, String sparkline)?
        getMarketCoins,
    TResult? Function()? getGlobalData,
    TResult? Function()? getFiatCurrency,
  }) {
    return getFiatCurrency?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String order, int pageNumber, int perPage, String sparkline)?
        getMarketCoins,
    TResult Function()? getGlobalData,
    TResult Function()? getFiatCurrency,
    required TResult orElse(),
  }) {
    if (getFiatCurrency != null) {
      return getFiatCurrency();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMarketCoinsEvent value) getMarketCoins,
    required TResult Function(GetGlobalDataEvent value) getGlobalData,
    required TResult Function(GetFiatCurrencyEvent value) getFiatCurrency,
  }) {
    return getFiatCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMarketCoinsEvent value)? getMarketCoins,
    TResult? Function(GetGlobalDataEvent value)? getGlobalData,
    TResult? Function(GetFiatCurrencyEvent value)? getFiatCurrency,
  }) {
    return getFiatCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMarketCoinsEvent value)? getMarketCoins,
    TResult Function(GetGlobalDataEvent value)? getGlobalData,
    TResult Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    required TResult orElse(),
  }) {
    if (getFiatCurrency != null) {
      return getFiatCurrency(this);
    }
    return orElse();
  }
}

abstract class GetFiatCurrencyEvent extends InitialDataEvent {
  const factory GetFiatCurrencyEvent() = _$GetFiatCurrencyEventImpl;
  const GetFiatCurrencyEvent._() : super._();
}

/// @nodoc
mixin _$InitialDataState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<Coin> get coins => throw _privateConstructorUsedError;
  GlobalData? get globalData => throw _privateConstructorUsedError;
  String? get fiatCurrency => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  /// Create a copy of InitialDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InitialDataStateCopyWith<InitialDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialDataStateCopyWith<$Res> {
  factory $InitialDataStateCopyWith(
          InitialDataState value, $Res Function(InitialDataState) then) =
      _$InitialDataStateCopyWithImpl<$Res, InitialDataState>;
  @useResult
  $Res call(
      {BlocStatus status,
      List<Coin> coins,
      GlobalData? globalData,
      String? fiatCurrency,
      Object? error});
}

/// @nodoc
class _$InitialDataStateCopyWithImpl<$Res, $Val extends InitialDataState>
    implements $InitialDataStateCopyWith<$Res> {
  _$InitialDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InitialDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? coins = null,
    Object? globalData = freezed,
    Object? fiatCurrency = freezed,
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
      globalData: freezed == globalData
          ? _value.globalData
          : globalData // ignore: cast_nullable_to_non_nullable
              as GlobalData?,
      fiatCurrency: freezed == fiatCurrency
          ? _value.fiatCurrency
          : fiatCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialDataStateImplCopyWith<$Res>
    implements $InitialDataStateCopyWith<$Res> {
  factory _$$InitialDataStateImplCopyWith(_$InitialDataStateImpl value,
          $Res Function(_$InitialDataStateImpl) then) =
      __$$InitialDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      List<Coin> coins,
      GlobalData? globalData,
      String? fiatCurrency,
      Object? error});
}

/// @nodoc
class __$$InitialDataStateImplCopyWithImpl<$Res>
    extends _$InitialDataStateCopyWithImpl<$Res, _$InitialDataStateImpl>
    implements _$$InitialDataStateImplCopyWith<$Res> {
  __$$InitialDataStateImplCopyWithImpl(_$InitialDataStateImpl _value,
      $Res Function(_$InitialDataStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitialDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? coins = null,
    Object? globalData = freezed,
    Object? fiatCurrency = freezed,
    Object? error = freezed,
  }) {
    return _then(_$InitialDataStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      coins: null == coins
          ? _value._coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<Coin>,
      globalData: freezed == globalData
          ? _value.globalData
          : globalData // ignore: cast_nullable_to_non_nullable
              as GlobalData?,
      fiatCurrency: freezed == fiatCurrency
          ? _value.fiatCurrency
          : fiatCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$InitialDataStateImpl implements _InitialDataState {
  const _$InitialDataStateImpl(
      {required this.status,
      required final List<Coin> coins,
      this.globalData,
      this.fiatCurrency,
      this.error})
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
  final GlobalData? globalData;
  @override
  final String? fiatCurrency;
  @override
  final Object? error;

  @override
  String toString() {
    return 'InitialDataState(status: $status, coins: $coins, globalData: $globalData, fiatCurrency: $fiatCurrency, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialDataStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._coins, _coins) &&
            (identical(other.globalData, globalData) ||
                other.globalData == globalData) &&
            (identical(other.fiatCurrency, fiatCurrency) ||
                other.fiatCurrency == fiatCurrency) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_coins),
      globalData,
      fiatCurrency,
      const DeepCollectionEquality().hash(error));

  /// Create a copy of InitialDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialDataStateImplCopyWith<_$InitialDataStateImpl> get copyWith =>
      __$$InitialDataStateImplCopyWithImpl<_$InitialDataStateImpl>(
          this, _$identity);
}

abstract class _InitialDataState implements InitialDataState {
  const factory _InitialDataState(
      {required final BlocStatus status,
      required final List<Coin> coins,
      final GlobalData? globalData,
      final String? fiatCurrency,
      final Object? error}) = _$InitialDataStateImpl;

  @override
  BlocStatus get status;
  @override
  List<Coin> get coins;
  @override
  GlobalData? get globalData;
  @override
  String? get fiatCurrency;
  @override
  Object? get error;

  /// Create a copy of InitialDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialDataStateImplCopyWith<_$InitialDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
