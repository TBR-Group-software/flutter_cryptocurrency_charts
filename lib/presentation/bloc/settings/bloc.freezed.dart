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
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFiatCurrency,
    required TResult Function(String fiatCurrency) selectFiatCurrency,
    required TResult Function() getTheme,
    required TResult Function(String themeType) selectTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFiatCurrency,
    TResult? Function(String fiatCurrency)? selectFiatCurrency,
    TResult? Function()? getTheme,
    TResult? Function(String themeType)? selectTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFiatCurrency,
    TResult Function(String fiatCurrency)? selectFiatCurrency,
    TResult Function()? getTheme,
    TResult Function(String themeType)? selectTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFiatCurrencyEvent value) getFiatCurrency,
    required TResult Function(SelectFiatCurrencyEvent value) selectFiatCurrency,
    required TResult Function(GetThemeEvent value) getTheme,
    required TResult Function(SelectThemeEvent value) selectTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    TResult? Function(SelectFiatCurrencyEvent value)? selectFiatCurrency,
    TResult? Function(GetThemeEvent value)? getTheme,
    TResult? Function(SelectThemeEvent value)? selectTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    TResult Function(SelectFiatCurrencyEvent value)? selectFiatCurrency,
    TResult Function(GetThemeEvent value)? getTheme,
    TResult Function(SelectThemeEvent value)? selectTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetFiatCurrencyEventImplCopyWith<$Res> {
  factory _$$GetFiatCurrencyEventImplCopyWith(_$GetFiatCurrencyEventImpl value,
          $Res Function(_$GetFiatCurrencyEventImpl) then) =
      __$$GetFiatCurrencyEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFiatCurrencyEventImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$GetFiatCurrencyEventImpl>
    implements _$$GetFiatCurrencyEventImplCopyWith<$Res> {
  __$$GetFiatCurrencyEventImplCopyWithImpl(_$GetFiatCurrencyEventImpl _value,
      $Res Function(_$GetFiatCurrencyEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetFiatCurrencyEventImpl extends GetFiatCurrencyEvent {
  const _$GetFiatCurrencyEventImpl() : super._();

  @override
  String toString() {
    return 'SettingsEvent.getFiatCurrency()';
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
    required TResult Function() getFiatCurrency,
    required TResult Function(String fiatCurrency) selectFiatCurrency,
    required TResult Function() getTheme,
    required TResult Function(String themeType) selectTheme,
  }) {
    return getFiatCurrency();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFiatCurrency,
    TResult? Function(String fiatCurrency)? selectFiatCurrency,
    TResult? Function()? getTheme,
    TResult? Function(String themeType)? selectTheme,
  }) {
    return getFiatCurrency?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFiatCurrency,
    TResult Function(String fiatCurrency)? selectFiatCurrency,
    TResult Function()? getTheme,
    TResult Function(String themeType)? selectTheme,
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
    required TResult Function(GetFiatCurrencyEvent value) getFiatCurrency,
    required TResult Function(SelectFiatCurrencyEvent value) selectFiatCurrency,
    required TResult Function(GetThemeEvent value) getTheme,
    required TResult Function(SelectThemeEvent value) selectTheme,
  }) {
    return getFiatCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    TResult? Function(SelectFiatCurrencyEvent value)? selectFiatCurrency,
    TResult? Function(GetThemeEvent value)? getTheme,
    TResult? Function(SelectThemeEvent value)? selectTheme,
  }) {
    return getFiatCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    TResult Function(SelectFiatCurrencyEvent value)? selectFiatCurrency,
    TResult Function(GetThemeEvent value)? getTheme,
    TResult Function(SelectThemeEvent value)? selectTheme,
    required TResult orElse(),
  }) {
    if (getFiatCurrency != null) {
      return getFiatCurrency(this);
    }
    return orElse();
  }
}

abstract class GetFiatCurrencyEvent extends SettingsEvent {
  const factory GetFiatCurrencyEvent() = _$GetFiatCurrencyEventImpl;
  const GetFiatCurrencyEvent._() : super._();
}

/// @nodoc
abstract class _$$SelectFiatCurrencyEventImplCopyWith<$Res> {
  factory _$$SelectFiatCurrencyEventImplCopyWith(
          _$SelectFiatCurrencyEventImpl value,
          $Res Function(_$SelectFiatCurrencyEventImpl) then) =
      __$$SelectFiatCurrencyEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fiatCurrency});
}

/// @nodoc
class __$$SelectFiatCurrencyEventImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SelectFiatCurrencyEventImpl>
    implements _$$SelectFiatCurrencyEventImplCopyWith<$Res> {
  __$$SelectFiatCurrencyEventImplCopyWithImpl(
      _$SelectFiatCurrencyEventImpl _value,
      $Res Function(_$SelectFiatCurrencyEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fiatCurrency = null,
  }) {
    return _then(_$SelectFiatCurrencyEventImpl(
      null == fiatCurrency
          ? _value.fiatCurrency
          : fiatCurrency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectFiatCurrencyEventImpl extends SelectFiatCurrencyEvent {
  const _$SelectFiatCurrencyEventImpl(this.fiatCurrency) : super._();

  @override
  final String fiatCurrency;

  @override
  String toString() {
    return 'SettingsEvent.selectFiatCurrency(fiatCurrency: $fiatCurrency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectFiatCurrencyEventImpl &&
            (identical(other.fiatCurrency, fiatCurrency) ||
                other.fiatCurrency == fiatCurrency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fiatCurrency);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectFiatCurrencyEventImplCopyWith<_$SelectFiatCurrencyEventImpl>
      get copyWith => __$$SelectFiatCurrencyEventImplCopyWithImpl<
          _$SelectFiatCurrencyEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFiatCurrency,
    required TResult Function(String fiatCurrency) selectFiatCurrency,
    required TResult Function() getTheme,
    required TResult Function(String themeType) selectTheme,
  }) {
    return selectFiatCurrency(fiatCurrency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFiatCurrency,
    TResult? Function(String fiatCurrency)? selectFiatCurrency,
    TResult? Function()? getTheme,
    TResult? Function(String themeType)? selectTheme,
  }) {
    return selectFiatCurrency?.call(fiatCurrency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFiatCurrency,
    TResult Function(String fiatCurrency)? selectFiatCurrency,
    TResult Function()? getTheme,
    TResult Function(String themeType)? selectTheme,
    required TResult orElse(),
  }) {
    if (selectFiatCurrency != null) {
      return selectFiatCurrency(fiatCurrency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFiatCurrencyEvent value) getFiatCurrency,
    required TResult Function(SelectFiatCurrencyEvent value) selectFiatCurrency,
    required TResult Function(GetThemeEvent value) getTheme,
    required TResult Function(SelectThemeEvent value) selectTheme,
  }) {
    return selectFiatCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    TResult? Function(SelectFiatCurrencyEvent value)? selectFiatCurrency,
    TResult? Function(GetThemeEvent value)? getTheme,
    TResult? Function(SelectThemeEvent value)? selectTheme,
  }) {
    return selectFiatCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    TResult Function(SelectFiatCurrencyEvent value)? selectFiatCurrency,
    TResult Function(GetThemeEvent value)? getTheme,
    TResult Function(SelectThemeEvent value)? selectTheme,
    required TResult orElse(),
  }) {
    if (selectFiatCurrency != null) {
      return selectFiatCurrency(this);
    }
    return orElse();
  }
}

abstract class SelectFiatCurrencyEvent extends SettingsEvent {
  const factory SelectFiatCurrencyEvent(final String fiatCurrency) =
      _$SelectFiatCurrencyEventImpl;
  const SelectFiatCurrencyEvent._() : super._();

  String get fiatCurrency;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectFiatCurrencyEventImplCopyWith<_$SelectFiatCurrencyEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetThemeEventImplCopyWith<$Res> {
  factory _$$GetThemeEventImplCopyWith(
          _$GetThemeEventImpl value, $Res Function(_$GetThemeEventImpl) then) =
      __$$GetThemeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetThemeEventImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$GetThemeEventImpl>
    implements _$$GetThemeEventImplCopyWith<$Res> {
  __$$GetThemeEventImplCopyWithImpl(
      _$GetThemeEventImpl _value, $Res Function(_$GetThemeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetThemeEventImpl extends GetThemeEvent {
  const _$GetThemeEventImpl() : super._();

  @override
  String toString() {
    return 'SettingsEvent.getTheme()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetThemeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFiatCurrency,
    required TResult Function(String fiatCurrency) selectFiatCurrency,
    required TResult Function() getTheme,
    required TResult Function(String themeType) selectTheme,
  }) {
    return getTheme();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFiatCurrency,
    TResult? Function(String fiatCurrency)? selectFiatCurrency,
    TResult? Function()? getTheme,
    TResult? Function(String themeType)? selectTheme,
  }) {
    return getTheme?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFiatCurrency,
    TResult Function(String fiatCurrency)? selectFiatCurrency,
    TResult Function()? getTheme,
    TResult Function(String themeType)? selectTheme,
    required TResult orElse(),
  }) {
    if (getTheme != null) {
      return getTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFiatCurrencyEvent value) getFiatCurrency,
    required TResult Function(SelectFiatCurrencyEvent value) selectFiatCurrency,
    required TResult Function(GetThemeEvent value) getTheme,
    required TResult Function(SelectThemeEvent value) selectTheme,
  }) {
    return getTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    TResult? Function(SelectFiatCurrencyEvent value)? selectFiatCurrency,
    TResult? Function(GetThemeEvent value)? getTheme,
    TResult? Function(SelectThemeEvent value)? selectTheme,
  }) {
    return getTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    TResult Function(SelectFiatCurrencyEvent value)? selectFiatCurrency,
    TResult Function(GetThemeEvent value)? getTheme,
    TResult Function(SelectThemeEvent value)? selectTheme,
    required TResult orElse(),
  }) {
    if (getTheme != null) {
      return getTheme(this);
    }
    return orElse();
  }
}

abstract class GetThemeEvent extends SettingsEvent {
  const factory GetThemeEvent() = _$GetThemeEventImpl;
  const GetThemeEvent._() : super._();
}

/// @nodoc
abstract class _$$SelectThemeEventImplCopyWith<$Res> {
  factory _$$SelectThemeEventImplCopyWith(_$SelectThemeEventImpl value,
          $Res Function(_$SelectThemeEventImpl) then) =
      __$$SelectThemeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String themeType});
}

/// @nodoc
class __$$SelectThemeEventImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SelectThemeEventImpl>
    implements _$$SelectThemeEventImplCopyWith<$Res> {
  __$$SelectThemeEventImplCopyWithImpl(_$SelectThemeEventImpl _value,
      $Res Function(_$SelectThemeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeType = null,
  }) {
    return _then(_$SelectThemeEventImpl(
      null == themeType
          ? _value.themeType
          : themeType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectThemeEventImpl extends SelectThemeEvent {
  const _$SelectThemeEventImpl(this.themeType) : super._();

  @override
  final String themeType;

  @override
  String toString() {
    return 'SettingsEvent.selectTheme(themeType: $themeType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectThemeEventImpl &&
            (identical(other.themeType, themeType) ||
                other.themeType == themeType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeType);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectThemeEventImplCopyWith<_$SelectThemeEventImpl> get copyWith =>
      __$$SelectThemeEventImplCopyWithImpl<_$SelectThemeEventImpl>(
          this, _$identity);

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFiatCurrency,
    required TResult Function(String fiatCurrency) selectFiatCurrency,
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFiatCurrency,
    TResult? Function(String fiatCurrency)? selectFiatCurrency,
    TResult? Function()? getTheme,
    TResult? Function(String themeType)? selectTheme,
  }) {
    return selectTheme?.call(themeType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFiatCurrency,
    TResult Function(String fiatCurrency)? selectFiatCurrency,
    TResult Function()? getTheme,
    TResult Function(String themeType)? selectTheme,
    required TResult orElse(),
  }) {
    if (selectTheme != null) {
      return selectTheme(themeType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFiatCurrencyEvent value) getFiatCurrency,
    required TResult Function(SelectFiatCurrencyEvent value) selectFiatCurrency,
    required TResult Function(GetThemeEvent value) getTheme,
    required TResult Function(SelectThemeEvent value) selectTheme,
  }) {
    return selectTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    TResult? Function(SelectFiatCurrencyEvent value)? selectFiatCurrency,
    TResult? Function(GetThemeEvent value)? getTheme,
    TResult? Function(SelectThemeEvent value)? selectTheme,
  }) {
    return selectTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    TResult Function(SelectFiatCurrencyEvent value)? selectFiatCurrency,
    TResult Function(GetThemeEvent value)? getTheme,
    TResult Function(SelectThemeEvent value)? selectTheme,
    required TResult orElse(),
  }) {
    if (selectTheme != null) {
      return selectTheme(this);
    }
    return orElse();
  }
}

abstract class SelectThemeEvent extends SettingsEvent {
  const factory SelectThemeEvent(final String themeType) =
      _$SelectThemeEventImpl;
  const SelectThemeEvent._() : super._();

  String get themeType;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectThemeEventImplCopyWith<_$SelectThemeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
