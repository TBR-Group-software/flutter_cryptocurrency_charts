// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initial_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InitialDataEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialDataEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'InitialDataEvent()';
  }
}

/// @nodoc
class $InitialDataEventCopyWith<$Res> {
  $InitialDataEventCopyWith(
      InitialDataEvent _, $Res Function(InitialDataEvent) __);
}

/// Adds pattern-matching-related methods to [InitialDataEvent].
extension InitialDataEventPatterns on InitialDataEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMarketCoinsEvent value)? getMarketCoins,
    TResult Function(GetGlobalDataEvent value)? getGlobalData,
    TResult Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetMarketCoinsEvent() when getMarketCoins != null:
        return getMarketCoins(_that);
      case GetGlobalDataEvent() when getGlobalData != null:
        return getGlobalData(_that);
      case GetFiatCurrencyEvent() when getFiatCurrency != null:
        return getFiatCurrency(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMarketCoinsEvent value) getMarketCoins,
    required TResult Function(GetGlobalDataEvent value) getGlobalData,
    required TResult Function(GetFiatCurrencyEvent value) getFiatCurrency,
  }) {
    final _that = this;
    switch (_that) {
      case GetMarketCoinsEvent():
        return getMarketCoins(_that);
      case GetGlobalDataEvent():
        return getGlobalData(_that);
      case GetFiatCurrencyEvent():
        return getFiatCurrency(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMarketCoinsEvent value)? getMarketCoins,
    TResult? Function(GetGlobalDataEvent value)? getGlobalData,
    TResult? Function(GetFiatCurrencyEvent value)? getFiatCurrency,
  }) {
    final _that = this;
    switch (_that) {
      case GetMarketCoinsEvent() when getMarketCoins != null:
        return getMarketCoins(_that);
      case GetGlobalDataEvent() when getGlobalData != null:
        return getGlobalData(_that);
      case GetFiatCurrencyEvent() when getFiatCurrency != null:
        return getFiatCurrency(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String order, int pageNumber, int perPage, String sparkline)?
        getMarketCoins,
    TResult Function()? getGlobalData,
    TResult Function()? getFiatCurrency,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetMarketCoinsEvent() when getMarketCoins != null:
        return getMarketCoins(
            _that.order, _that.pageNumber, _that.perPage, _that.sparkline);
      case GetGlobalDataEvent() when getGlobalData != null:
        return getGlobalData();
      case GetFiatCurrencyEvent() when getFiatCurrency != null:
        return getFiatCurrency();
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String order, int pageNumber, int perPage, String sparkline)
        getMarketCoins,
    required TResult Function() getGlobalData,
    required TResult Function() getFiatCurrency,
  }) {
    final _that = this;
    switch (_that) {
      case GetMarketCoinsEvent():
        return getMarketCoins(
            _that.order, _that.pageNumber, _that.perPage, _that.sparkline);
      case GetGlobalDataEvent():
        return getGlobalData();
      case GetFiatCurrencyEvent():
        return getFiatCurrency();
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String order, int pageNumber, int perPage, String sparkline)?
        getMarketCoins,
    TResult? Function()? getGlobalData,
    TResult? Function()? getFiatCurrency,
  }) {
    final _that = this;
    switch (_that) {
      case GetMarketCoinsEvent() when getMarketCoins != null:
        return getMarketCoins(
            _that.order, _that.pageNumber, _that.perPage, _that.sparkline);
      case GetGlobalDataEvent() when getGlobalData != null:
        return getGlobalData();
      case GetFiatCurrencyEvent() when getFiatCurrency != null:
        return getFiatCurrency();
      case _:
        return null;
    }
  }
}

/// @nodoc

class GetMarketCoinsEvent extends InitialDataEvent {
  const GetMarketCoinsEvent(
      this.order, this.pageNumber, this.perPage, this.sparkline)
      : super._();

  final String order;
  final int pageNumber;
  final int perPage;
  final String sparkline;

  /// Create a copy of InitialDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetMarketCoinsEventCopyWith<GetMarketCoinsEvent> get copyWith =>
      _$GetMarketCoinsEventCopyWithImpl<GetMarketCoinsEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetMarketCoinsEvent &&
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

  @override
  String toString() {
    return 'InitialDataEvent.getMarketCoins(order: $order, pageNumber: $pageNumber, perPage: $perPage, sparkline: $sparkline)';
  }
}

/// @nodoc
abstract mixin class $GetMarketCoinsEventCopyWith<$Res>
    implements $InitialDataEventCopyWith<$Res> {
  factory $GetMarketCoinsEventCopyWith(
          GetMarketCoinsEvent value, $Res Function(GetMarketCoinsEvent) _then) =
      _$GetMarketCoinsEventCopyWithImpl;
  @useResult
  $Res call({String order, int pageNumber, int perPage, String sparkline});
}

/// @nodoc
class _$GetMarketCoinsEventCopyWithImpl<$Res>
    implements $GetMarketCoinsEventCopyWith<$Res> {
  _$GetMarketCoinsEventCopyWithImpl(this._self, this._then);

  final GetMarketCoinsEvent _self;
  final $Res Function(GetMarketCoinsEvent) _then;

  /// Create a copy of InitialDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? order = null,
    Object? pageNumber = null,
    Object? perPage = null,
    Object? sparkline = null,
  }) {
    return _then(GetMarketCoinsEvent(
      null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
      null == pageNumber
          ? _self.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      null == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      null == sparkline
          ? _self.sparkline
          : sparkline // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetGlobalDataEvent extends InitialDataEvent {
  const GetGlobalDataEvent() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetGlobalDataEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'InitialDataEvent.getGlobalData()';
  }
}

/// @nodoc

class GetFiatCurrencyEvent extends InitialDataEvent {
  const GetFiatCurrencyEvent() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetFiatCurrencyEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'InitialDataEvent.getFiatCurrency()';
  }
}

/// @nodoc
mixin _$InitialDataState {
  BlocStatus get status;
  List<Coin> get coins;
  GlobalData? get globalData;
  String? get fiatCurrency;
  Object? get error;

  /// Create a copy of InitialDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InitialDataStateCopyWith<InitialDataState> get copyWith =>
      _$InitialDataStateCopyWithImpl<InitialDataState>(
          this as InitialDataState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitialDataState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.coins, coins) &&
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
      const DeepCollectionEquality().hash(coins),
      globalData,
      fiatCurrency,
      const DeepCollectionEquality().hash(error));

  @override
  String toString() {
    return 'InitialDataState(status: $status, coins: $coins, globalData: $globalData, fiatCurrency: $fiatCurrency, error: $error)';
  }
}

/// @nodoc
abstract mixin class $InitialDataStateCopyWith<$Res> {
  factory $InitialDataStateCopyWith(
          InitialDataState value, $Res Function(InitialDataState) _then) =
      _$InitialDataStateCopyWithImpl;
  @useResult
  $Res call(
      {BlocStatus status,
      List<Coin> coins,
      GlobalData? globalData,
      String? fiatCurrency,
      Object? error});
}

/// @nodoc
class _$InitialDataStateCopyWithImpl<$Res>
    implements $InitialDataStateCopyWith<$Res> {
  _$InitialDataStateCopyWithImpl(this._self, this._then);

  final InitialDataState _self;
  final $Res Function(InitialDataState) _then;

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
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      coins: null == coins
          ? _self.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<Coin>,
      globalData: freezed == globalData
          ? _self.globalData
          : globalData // ignore: cast_nullable_to_non_nullable
              as GlobalData?,
      fiatCurrency: freezed == fiatCurrency
          ? _self.fiatCurrency
          : fiatCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error ? _self.error : error,
    ));
  }
}

/// Adds pattern-matching-related methods to [InitialDataState].
extension InitialDataStatePatterns on InitialDataState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_InitialDataState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InitialDataState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_InitialDataState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InitialDataState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_InitialDataState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InitialDataState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(BlocStatus status, List<Coin> coins,
            GlobalData? globalData, String? fiatCurrency, Object? error)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InitialDataState() when $default != null:
        return $default(_that.status, _that.coins, _that.globalData,
            _that.fiatCurrency, _that.error);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(BlocStatus status, List<Coin> coins,
            GlobalData? globalData, String? fiatCurrency, Object? error)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InitialDataState():
        return $default(_that.status, _that.coins, _that.globalData,
            _that.fiatCurrency, _that.error);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(BlocStatus status, List<Coin> coins,
            GlobalData? globalData, String? fiatCurrency, Object? error)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InitialDataState() when $default != null:
        return $default(_that.status, _that.coins, _that.globalData,
            _that.fiatCurrency, _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _InitialDataState implements InitialDataState {
  const _InitialDataState(
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

  /// Create a copy of InitialDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InitialDataStateCopyWith<_InitialDataState> get copyWith =>
      __$InitialDataStateCopyWithImpl<_InitialDataState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InitialDataState &&
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

  @override
  String toString() {
    return 'InitialDataState(status: $status, coins: $coins, globalData: $globalData, fiatCurrency: $fiatCurrency, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$InitialDataStateCopyWith<$Res>
    implements $InitialDataStateCopyWith<$Res> {
  factory _$InitialDataStateCopyWith(
          _InitialDataState value, $Res Function(_InitialDataState) _then) =
      __$InitialDataStateCopyWithImpl;
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
class __$InitialDataStateCopyWithImpl<$Res>
    implements _$InitialDataStateCopyWith<$Res> {
  __$InitialDataStateCopyWithImpl(this._self, this._then);

  final _InitialDataState _self;
  final $Res Function(_InitialDataState) _then;

  /// Create a copy of InitialDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? coins = null,
    Object? globalData = freezed,
    Object? fiatCurrency = freezed,
    Object? error = freezed,
  }) {
    return _then(_InitialDataState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      coins: null == coins
          ? _self._coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<Coin>,
      globalData: freezed == globalData
          ? _self.globalData
          : globalData // ignore: cast_nullable_to_non_nullable
              as GlobalData?,
      fiatCurrency: freezed == fiatCurrency
          ? _self.fiatCurrency
          : fiatCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error ? _self.error : error,
    ));
  }
}

// dart format on
