// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoinEvent {
  String get currency;

  String get order;

  int get pageNumber;

  int get perPage;

  String get sparkline;

  /// Create a copy of CoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoinEventCopyWith<CoinEvent> get copyWith =>
      _$CoinEventCopyWithImpl<CoinEvent>(this as CoinEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoinEvent &&
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

  @override
  String toString() {
    return 'CoinEvent(currency: $currency, order: $order, pageNumber: $pageNumber, perPage: $perPage, sparkline: $sparkline)';
  }
}

/// @nodoc
abstract mixin class $CoinEventCopyWith<$Res> {
  factory $CoinEventCopyWith(CoinEvent value, $Res Function(CoinEvent) _then) =
      _$CoinEventCopyWithImpl;

  @useResult
  $Res call(
      {String currency,
      String order,
      int pageNumber,
      int perPage,
      String sparkline});
}

/// @nodoc
class _$CoinEventCopyWithImpl<$Res> implements $CoinEventCopyWith<$Res> {
  _$CoinEventCopyWithImpl(this._self, this._then);

  final CoinEvent _self;
  final $Res Function(CoinEvent) _then;

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
    return _then(_self.copyWith(
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
      pageNumber: null == pageNumber
          ? _self.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      sparkline: null == sparkline
          ? _self.sparkline
          : sparkline // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CoinEvent].
extension CoinEventPatterns on CoinEvent {
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
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetMarketCoinsEvent() when getMarketCoins != null:
        return getMarketCoins(_that);
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
  }) {
    final _that = this;
    switch (_that) {
      case GetMarketCoinsEvent():
        return getMarketCoins(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMarketCoinsEvent value)? getMarketCoins,
  }) {
    final _that = this;
    switch (_that) {
      case GetMarketCoinsEvent() when getMarketCoins != null:
        return getMarketCoins(_that);
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
    TResult Function(String currency, String order, int pageNumber, int perPage,
            String sparkline)?
        getMarketCoins,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetMarketCoinsEvent() when getMarketCoins != null:
        return getMarketCoins(_that.currency, _that.order, _that.pageNumber,
            _that.perPage, _that.sparkline);
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
    required TResult Function(String currency, String order, int pageNumber,
            int perPage, String sparkline)
        getMarketCoins,
  }) {
    final _that = this;
    switch (_that) {
      case GetMarketCoinsEvent():
        return getMarketCoins(_that.currency, _that.order, _that.pageNumber,
            _that.perPage, _that.sparkline);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String currency, String order, int pageNumber,
            int perPage, String sparkline)?
        getMarketCoins,
  }) {
    final _that = this;
    switch (_that) {
      case GetMarketCoinsEvent() when getMarketCoins != null:
        return getMarketCoins(_that.currency, _that.order, _that.pageNumber,
            _that.perPage, _that.sparkline);
      case _:
        return null;
    }
  }
}

/// @nodoc

class GetMarketCoinsEvent extends CoinEvent {
  const GetMarketCoinsEvent(
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

  /// Create a copy of CoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetMarketCoinsEventCopyWith<GetMarketCoinsEvent> get copyWith =>
      _$GetMarketCoinsEventCopyWithImpl<GetMarketCoinsEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetMarketCoinsEvent &&
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

  @override
  String toString() {
    return 'CoinEvent.getMarketCoins(currency: $currency, order: $order, pageNumber: $pageNumber, perPage: $perPage, sparkline: $sparkline)';
  }
}

/// @nodoc
abstract mixin class $GetMarketCoinsEventCopyWith<$Res>
    implements $CoinEventCopyWith<$Res> {
  factory $GetMarketCoinsEventCopyWith(
          GetMarketCoinsEvent value, $Res Function(GetMarketCoinsEvent) _then) =
      _$GetMarketCoinsEventCopyWithImpl;
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
class _$GetMarketCoinsEventCopyWithImpl<$Res>
    implements $GetMarketCoinsEventCopyWith<$Res> {
  _$GetMarketCoinsEventCopyWithImpl(this._self, this._then);

  final GetMarketCoinsEvent _self;
  final $Res Function(GetMarketCoinsEvent) _then;

  /// Create a copy of CoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currency = null,
    Object? order = null,
    Object? pageNumber = null,
    Object? perPage = null,
    Object? sparkline = null,
  }) {
    return _then(GetMarketCoinsEvent(
      null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
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
mixin _$CoinState {
  BlocStatus get status;
  List<Coin> get coins;
  Object? get error;

  /// Create a copy of CoinState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoinStateCopyWith<CoinState> get copyWith =>
      _$CoinStateCopyWithImpl<CoinState>(this as CoinState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoinState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.coins, coins) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(coins),
      const DeepCollectionEquality().hash(error));

  @override
  String toString() {
    return 'CoinState(status: $status, coins: $coins, error: $error)';
  }
}

/// @nodoc
abstract mixin class $CoinStateCopyWith<$Res> {
  factory $CoinStateCopyWith(CoinState value, $Res Function(CoinState) _then) =
      _$CoinStateCopyWithImpl;
  @useResult
  $Res call({BlocStatus status, List<Coin> coins, Object? error});
}

/// @nodoc
class _$CoinStateCopyWithImpl<$Res> implements $CoinStateCopyWith<$Res> {
  _$CoinStateCopyWithImpl(this._self, this._then);

  final CoinState _self;
  final $Res Function(CoinState) _then;

  /// Create a copy of CoinState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? coins = null,
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
      error: freezed == error ? _self.error : error,
    ));
  }
}

/// Adds pattern-matching-related methods to [CoinState].
extension CoinStatePatterns on CoinState {
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
    TResult Function(_CoinState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoinState() when $default != null:
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
    TResult Function(_CoinState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoinState():
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
    TResult? Function(_CoinState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoinState() when $default != null:
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
    TResult Function(BlocStatus status, List<Coin> coins, Object? error)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoinState() when $default != null:
        return $default(_that.status, _that.coins, _that.error);
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
    TResult Function(BlocStatus status, List<Coin> coins, Object? error)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoinState():
        return $default(_that.status, _that.coins, _that.error);
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
    TResult? Function(BlocStatus status, List<Coin> coins, Object? error)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoinState() when $default != null:
        return $default(_that.status, _that.coins, _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CoinState implements CoinState {
  const _CoinState(
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

  /// Create a copy of CoinState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CoinStateCopyWith<_CoinState> get copyWith =>
      __$CoinStateCopyWithImpl<_CoinState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoinState &&
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

  @override
  String toString() {
    return 'CoinState(status: $status, coins: $coins, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$CoinStateCopyWith<$Res>
    implements $CoinStateCopyWith<$Res> {
  factory _$CoinStateCopyWith(
          _CoinState value, $Res Function(_CoinState) _then) =
      __$CoinStateCopyWithImpl;
  @override
  @useResult
  $Res call({BlocStatus status, List<Coin> coins, Object? error});
}

/// @nodoc
class __$CoinStateCopyWithImpl<$Res> implements _$CoinStateCopyWith<$Res> {
  __$CoinStateCopyWithImpl(this._self, this._then);

  final _CoinState _self;
  final $Res Function(_CoinState) _then;

  /// Create a copy of CoinState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? coins = null,
    Object? error = freezed,
  }) {
    return _then(_CoinState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      coins: null == coins
          ? _self._coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<Coin>,
      error: freezed == error ? _self.error : error,
    ));
  }
}

// dart format on
