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
mixin _$SettingsEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SettingsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SettingsEvent()';
  }
}

/// @nodoc
class $SettingsEventCopyWith<$Res> {
  $SettingsEventCopyWith(SettingsEvent _, $Res Function(SettingsEvent) __);
}

/// Adds pattern-matching-related methods to [SettingsEvent].
extension SettingsEventPatterns on SettingsEvent {
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
    TResult Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    TResult Function(SelectFiatCurrencyEvent value)? selectFiatCurrency,
    TResult Function(GetThemeEvent value)? getTheme,
    TResult Function(SelectThemeEvent value)? selectTheme,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetFiatCurrencyEvent() when getFiatCurrency != null:
        return getFiatCurrency(_that);
      case SelectFiatCurrencyEvent() when selectFiatCurrency != null:
        return selectFiatCurrency(_that);
      case GetThemeEvent() when getTheme != null:
        return getTheme(_that);
      case SelectThemeEvent() when selectTheme != null:
        return selectTheme(_that);
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
    required TResult Function(GetFiatCurrencyEvent value) getFiatCurrency,
    required TResult Function(SelectFiatCurrencyEvent value) selectFiatCurrency,
    required TResult Function(GetThemeEvent value) getTheme,
    required TResult Function(SelectThemeEvent value) selectTheme,
  }) {
    final _that = this;
    switch (_that) {
      case GetFiatCurrencyEvent():
        return getFiatCurrency(_that);
      case SelectFiatCurrencyEvent():
        return selectFiatCurrency(_that);
      case GetThemeEvent():
        return getTheme(_that);
      case SelectThemeEvent():
        return selectTheme(_that);
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
    TResult? Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    TResult? Function(SelectFiatCurrencyEvent value)? selectFiatCurrency,
    TResult? Function(GetThemeEvent value)? getTheme,
    TResult? Function(SelectThemeEvent value)? selectTheme,
  }) {
    final _that = this;
    switch (_that) {
      case GetFiatCurrencyEvent() when getFiatCurrency != null:
        return getFiatCurrency(_that);
      case SelectFiatCurrencyEvent() when selectFiatCurrency != null:
        return selectFiatCurrency(_that);
      case GetThemeEvent() when getTheme != null:
        return getTheme(_that);
      case SelectThemeEvent() when selectTheme != null:
        return selectTheme(_that);
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
    TResult Function()? getFiatCurrency,
    TResult Function(String fiatCurrency)? selectFiatCurrency,
    TResult Function()? getTheme,
    TResult Function(String themeType)? selectTheme,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetFiatCurrencyEvent() when getFiatCurrency != null:
        return getFiatCurrency();
      case SelectFiatCurrencyEvent() when selectFiatCurrency != null:
        return selectFiatCurrency(_that.fiatCurrency);
      case GetThemeEvent() when getTheme != null:
        return getTheme();
      case SelectThemeEvent() when selectTheme != null:
        return selectTheme(_that.themeType);
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
    required TResult Function() getFiatCurrency,
    required TResult Function(String fiatCurrency) selectFiatCurrency,
    required TResult Function() getTheme,
    required TResult Function(String themeType) selectTheme,
  }) {
    final _that = this;
    switch (_that) {
      case GetFiatCurrencyEvent():
        return getFiatCurrency();
      case SelectFiatCurrencyEvent():
        return selectFiatCurrency(_that.fiatCurrency);
      case GetThemeEvent():
        return getTheme();
      case SelectThemeEvent():
        return selectTheme(_that.themeType);
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
    TResult? Function()? getFiatCurrency,
    TResult? Function(String fiatCurrency)? selectFiatCurrency,
    TResult? Function()? getTheme,
    TResult? Function(String themeType)? selectTheme,
  }) {
    final _that = this;
    switch (_that) {
      case GetFiatCurrencyEvent() when getFiatCurrency != null:
        return getFiatCurrency();
      case SelectFiatCurrencyEvent() when selectFiatCurrency != null:
        return selectFiatCurrency(_that.fiatCurrency);
      case GetThemeEvent() when getTheme != null:
        return getTheme();
      case SelectThemeEvent() when selectTheme != null:
        return selectTheme(_that.themeType);
      case _:
        return null;
    }
  }
}

/// @nodoc

class GetFiatCurrencyEvent extends SettingsEvent {
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
    return 'SettingsEvent.getFiatCurrency()';
  }
}

/// @nodoc

class SelectFiatCurrencyEvent extends SettingsEvent {
  const SelectFiatCurrencyEvent(this.fiatCurrency) : super._();

  final String fiatCurrency;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SelectFiatCurrencyEventCopyWith<SelectFiatCurrencyEvent> get copyWith =>
      _$SelectFiatCurrencyEventCopyWithImpl<SelectFiatCurrencyEvent>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectFiatCurrencyEvent &&
            (identical(other.fiatCurrency, fiatCurrency) ||
                other.fiatCurrency == fiatCurrency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fiatCurrency);

  @override
  String toString() {
    return 'SettingsEvent.selectFiatCurrency(fiatCurrency: $fiatCurrency)';
  }
}

/// @nodoc
abstract mixin class $SelectFiatCurrencyEventCopyWith<$Res>
    implements $SettingsEventCopyWith<$Res> {
  factory $SelectFiatCurrencyEventCopyWith(SelectFiatCurrencyEvent value,
          $Res Function(SelectFiatCurrencyEvent) _then) =
      _$SelectFiatCurrencyEventCopyWithImpl;
  @useResult
  $Res call({String fiatCurrency});
}

/// @nodoc
class _$SelectFiatCurrencyEventCopyWithImpl<$Res>
    implements $SelectFiatCurrencyEventCopyWith<$Res> {
  _$SelectFiatCurrencyEventCopyWithImpl(this._self, this._then);

  final SelectFiatCurrencyEvent _self;
  final $Res Function(SelectFiatCurrencyEvent) _then;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fiatCurrency = null,
  }) {
    return _then(SelectFiatCurrencyEvent(
      null == fiatCurrency
          ? _self.fiatCurrency
          : fiatCurrency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetThemeEvent extends SettingsEvent {
  const GetThemeEvent() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetThemeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SettingsEvent.getTheme()';
  }
}

/// @nodoc

class SelectThemeEvent extends SettingsEvent {
  const SelectThemeEvent(this.themeType) : super._();

  final String themeType;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SelectThemeEventCopyWith<SelectThemeEvent> get copyWith =>
      _$SelectThemeEventCopyWithImpl<SelectThemeEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectThemeEvent &&
            (identical(other.themeType, themeType) ||
                other.themeType == themeType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeType);

  @override
  String toString() {
    return 'SettingsEvent.selectTheme(themeType: $themeType)';
  }
}

/// @nodoc
abstract mixin class $SelectThemeEventCopyWith<$Res>
    implements $SettingsEventCopyWith<$Res> {
  factory $SelectThemeEventCopyWith(
          SelectThemeEvent value, $Res Function(SelectThemeEvent) _then) =
      _$SelectThemeEventCopyWithImpl;
  @useResult
  $Res call({String themeType});
}

/// @nodoc
class _$SelectThemeEventCopyWithImpl<$Res>
    implements $SelectThemeEventCopyWith<$Res> {
  _$SelectThemeEventCopyWithImpl(this._self, this._then);

  final SelectThemeEvent _self;
  final $Res Function(SelectThemeEvent) _then;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? themeType = null,
  }) {
    return _then(SelectThemeEvent(
      null == themeType
          ? _self.themeType
          : themeType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
