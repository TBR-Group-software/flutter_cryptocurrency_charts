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
mixin _$GlobalDataEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GlobalDataEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GlobalDataEvent()';
  }
}

/// @nodoc
class $GlobalDataEventCopyWith<$Res> {
  $GlobalDataEventCopyWith(
      GlobalDataEvent _, $Res Function(GlobalDataEvent) __);
}

/// Adds pattern-matching-related methods to [GlobalDataEvent].
extension GlobalDataEventPatterns on GlobalDataEvent {
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
    TResult Function(GetGlobalDataEvent value)? getGlobalData,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetGlobalDataEvent() when getGlobalData != null:
        return getGlobalData(_that);
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
    required TResult Function(GetGlobalDataEvent value) getGlobalData,
  }) {
    final _that = this;
    switch (_that) {
      case GetGlobalDataEvent():
        return getGlobalData(_that);
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
    TResult? Function(GetGlobalDataEvent value)? getGlobalData,
  }) {
    final _that = this;
    switch (_that) {
      case GetGlobalDataEvent() when getGlobalData != null:
        return getGlobalData(_that);
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
    TResult Function()? getGlobalData,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetGlobalDataEvent() when getGlobalData != null:
        return getGlobalData();
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
    required TResult Function() getGlobalData,
  }) {
    final _that = this;
    switch (_that) {
      case GetGlobalDataEvent():
        return getGlobalData();
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
    TResult? Function()? getGlobalData,
  }) {
    final _that = this;
    switch (_that) {
      case GetGlobalDataEvent() when getGlobalData != null:
        return getGlobalData();
      case _:
        return null;
    }
  }
}

/// @nodoc

class GetGlobalDataEvent extends GlobalDataEvent {
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
    return 'GlobalDataEvent.getGlobalData()';
  }
}

/// @nodoc
mixin _$GlobalDataState {
  BlocStatus get status;
  GlobalData? get globalData;
  Object? get error;

  /// Create a copy of GlobalDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GlobalDataStateCopyWith<GlobalDataState> get copyWith =>
      _$GlobalDataStateCopyWithImpl<GlobalDataState>(
          this as GlobalDataState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GlobalDataState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.globalData, globalData) ||
                other.globalData == globalData) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, globalData,
      const DeepCollectionEquality().hash(error));

  @override
  String toString() {
    return 'GlobalDataState(status: $status, globalData: $globalData, error: $error)';
  }
}

/// @nodoc
abstract mixin class $GlobalDataStateCopyWith<$Res> {
  factory $GlobalDataStateCopyWith(
          GlobalDataState value, $Res Function(GlobalDataState) _then) =
      _$GlobalDataStateCopyWithImpl;
  @useResult
  $Res call({BlocStatus status, GlobalData? globalData, Object? error});
}

/// @nodoc
class _$GlobalDataStateCopyWithImpl<$Res>
    implements $GlobalDataStateCopyWith<$Res> {
  _$GlobalDataStateCopyWithImpl(this._self, this._then);

  final GlobalDataState _self;
  final $Res Function(GlobalDataState) _then;

  /// Create a copy of GlobalDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? globalData = freezed,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      globalData: freezed == globalData
          ? _self.globalData
          : globalData // ignore: cast_nullable_to_non_nullable
              as GlobalData?,
      error: freezed == error ? _self.error : error,
    ));
  }
}

/// Adds pattern-matching-related methods to [GlobalDataState].
extension GlobalDataStatePatterns on GlobalDataState {
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
    TResult Function(_GlobalDataState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GlobalDataState() when $default != null:
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
    TResult Function(_GlobalDataState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GlobalDataState():
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
    TResult? Function(_GlobalDataState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GlobalDataState() when $default != null:
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
    TResult Function(BlocStatus status, GlobalData? globalData, Object? error)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GlobalDataState() when $default != null:
        return $default(_that.status, _that.globalData, _that.error);
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
    TResult Function(BlocStatus status, GlobalData? globalData, Object? error)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GlobalDataState():
        return $default(_that.status, _that.globalData, _that.error);
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
    TResult? Function(BlocStatus status, GlobalData? globalData, Object? error)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GlobalDataState() when $default != null:
        return $default(_that.status, _that.globalData, _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GlobalDataState implements GlobalDataState {
  const _GlobalDataState(this.status, this.globalData, {this.error});

  @override
  final BlocStatus status;
  @override
  final GlobalData? globalData;
  @override
  final Object? error;

  /// Create a copy of GlobalDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GlobalDataStateCopyWith<_GlobalDataState> get copyWith =>
      __$GlobalDataStateCopyWithImpl<_GlobalDataState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GlobalDataState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.globalData, globalData) ||
                other.globalData == globalData) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, globalData,
      const DeepCollectionEquality().hash(error));

  @override
  String toString() {
    return 'GlobalDataState(status: $status, globalData: $globalData, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$GlobalDataStateCopyWith<$Res>
    implements $GlobalDataStateCopyWith<$Res> {
  factory _$GlobalDataStateCopyWith(
          _GlobalDataState value, $Res Function(_GlobalDataState) _then) =
      __$GlobalDataStateCopyWithImpl;
  @override
  @useResult
  $Res call({BlocStatus status, GlobalData? globalData, Object? error});
}

/// @nodoc
class __$GlobalDataStateCopyWithImpl<$Res>
    implements _$GlobalDataStateCopyWith<$Res> {
  __$GlobalDataStateCopyWithImpl(this._self, this._then);

  final _GlobalDataState _self;
  final $Res Function(_GlobalDataState) _then;

  /// Create a copy of GlobalDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? globalData = freezed,
    Object? error = freezed,
  }) {
    return _then(_GlobalDataState(
      null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      freezed == globalData
          ? _self.globalData
          : globalData // ignore: cast_nullable_to_non_nullable
              as GlobalData?,
      error: freezed == error ? _self.error : error,
    ));
  }
}

// dart format on
