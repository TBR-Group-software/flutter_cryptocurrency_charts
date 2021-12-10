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
class _$SettingsEventTearOff {
  const _$SettingsEventTearOff();

  GetFiatCurrencyEvent getFiatCurrency() {
    return const GetFiatCurrencyEvent();
  }

  SelectFiatCurrencyEvent selectFiatCurrency(String fiatCurrency) {
    return SelectFiatCurrencyEvent(
      fiatCurrency,
    );
  }

  GetThemeEvent getTheme() {
    return const GetThemeEvent();
  }

  SelectThemeEvent selectTheme(String themeType) {
    return SelectThemeEvent(
      themeType,
    );
  }
}

/// @nodoc
const $SettingsEvent = _$SettingsEventTearOff();

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
    TResult Function()? getFiatCurrency,
    TResult Function(String fiatCurrency)? selectFiatCurrency,
    TResult Function()? getTheme,
    TResult Function(String themeType)? selectTheme,
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
    TResult Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    TResult Function(SelectFiatCurrencyEvent value)? selectFiatCurrency,
    TResult Function(GetThemeEvent value)? getTheme,
    TResult Function(SelectThemeEvent value)? selectTheme,
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
      _$SettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  final SettingsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsEvent) _then;
}

/// @nodoc
abstract class $GetFiatCurrencyEventCopyWith<$Res> {
  factory $GetFiatCurrencyEventCopyWith(GetFiatCurrencyEvent value,
          $Res Function(GetFiatCurrencyEvent) then) =
      _$GetFiatCurrencyEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetFiatCurrencyEventCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements $GetFiatCurrencyEventCopyWith<$Res> {
  _$GetFiatCurrencyEventCopyWithImpl(
      GetFiatCurrencyEvent _value, $Res Function(GetFiatCurrencyEvent) _then)
      : super(_value, (v) => _then(v as GetFiatCurrencyEvent));

  @override
  GetFiatCurrencyEvent get _value => super._value as GetFiatCurrencyEvent;
}

/// @nodoc

class _$GetFiatCurrencyEvent extends GetFiatCurrencyEvent {
  const _$GetFiatCurrencyEvent() : super._();

  @override
  String toString() {
    return 'SettingsEvent.getFiatCurrency()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetFiatCurrencyEvent);
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
    TResult Function()? getFiatCurrency,
    TResult Function(String fiatCurrency)? selectFiatCurrency,
    TResult Function()? getTheme,
    TResult Function(String themeType)? selectTheme,
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
    TResult Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    TResult Function(SelectFiatCurrencyEvent value)? selectFiatCurrency,
    TResult Function(GetThemeEvent value)? getTheme,
    TResult Function(SelectThemeEvent value)? selectTheme,
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
  const factory GetFiatCurrencyEvent() = _$GetFiatCurrencyEvent;
  const GetFiatCurrencyEvent._() : super._();
}

/// @nodoc
abstract class $SelectFiatCurrencyEventCopyWith<$Res> {
  factory $SelectFiatCurrencyEventCopyWith(SelectFiatCurrencyEvent value,
          $Res Function(SelectFiatCurrencyEvent) then) =
      _$SelectFiatCurrencyEventCopyWithImpl<$Res>;
  $Res call({String fiatCurrency});
}

/// @nodoc
class _$SelectFiatCurrencyEventCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements $SelectFiatCurrencyEventCopyWith<$Res> {
  _$SelectFiatCurrencyEventCopyWithImpl(SelectFiatCurrencyEvent _value,
      $Res Function(SelectFiatCurrencyEvent) _then)
      : super(_value, (v) => _then(v as SelectFiatCurrencyEvent));

  @override
  SelectFiatCurrencyEvent get _value => super._value as SelectFiatCurrencyEvent;

  @override
  $Res call({
    Object? fiatCurrency = freezed,
  }) {
    return _then(SelectFiatCurrencyEvent(
      fiatCurrency == freezed
          ? _value.fiatCurrency
          : fiatCurrency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectFiatCurrencyEvent extends SelectFiatCurrencyEvent {
  const _$SelectFiatCurrencyEvent(this.fiatCurrency) : super._();

  @override
  final String fiatCurrency;

  @override
  String toString() {
    return 'SettingsEvent.selectFiatCurrency(fiatCurrency: $fiatCurrency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectFiatCurrencyEvent &&
            (identical(other.fiatCurrency, fiatCurrency) ||
                const DeepCollectionEquality()
                    .equals(other.fiatCurrency, fiatCurrency)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fiatCurrency);

  @JsonKey(ignore: true)
  @override
  $SelectFiatCurrencyEventCopyWith<SelectFiatCurrencyEvent> get copyWith =>
      _$SelectFiatCurrencyEventCopyWithImpl<SelectFiatCurrencyEvent>(
          this, _$identity);

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
    TResult Function()? getFiatCurrency,
    TResult Function(String fiatCurrency)? selectFiatCurrency,
    TResult Function()? getTheme,
    TResult Function(String themeType)? selectTheme,
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
    TResult Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    TResult Function(SelectFiatCurrencyEvent value)? selectFiatCurrency,
    TResult Function(GetThemeEvent value)? getTheme,
    TResult Function(SelectThemeEvent value)? selectTheme,
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
  const factory SelectFiatCurrencyEvent(String fiatCurrency) =
      _$SelectFiatCurrencyEvent;
  const SelectFiatCurrencyEvent._() : super._();

  String get fiatCurrency => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectFiatCurrencyEventCopyWith<SelectFiatCurrencyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetThemeEventCopyWith<$Res> {
  factory $GetThemeEventCopyWith(
          GetThemeEvent value, $Res Function(GetThemeEvent) then) =
      _$GetThemeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetThemeEventCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements $GetThemeEventCopyWith<$Res> {
  _$GetThemeEventCopyWithImpl(
      GetThemeEvent _value, $Res Function(GetThemeEvent) _then)
      : super(_value, (v) => _then(v as GetThemeEvent));

  @override
  GetThemeEvent get _value => super._value as GetThemeEvent;
}

/// @nodoc

class _$GetThemeEvent extends GetThemeEvent {
  const _$GetThemeEvent() : super._();

  @override
  String toString() {
    return 'SettingsEvent.getTheme()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetThemeEvent);
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
    TResult Function()? getFiatCurrency,
    TResult Function(String fiatCurrency)? selectFiatCurrency,
    TResult Function()? getTheme,
    TResult Function(String themeType)? selectTheme,
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
    TResult Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    TResult Function(SelectFiatCurrencyEvent value)? selectFiatCurrency,
    TResult Function(GetThemeEvent value)? getTheme,
    TResult Function(SelectThemeEvent value)? selectTheme,
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
  const factory GetThemeEvent() = _$GetThemeEvent;
  const GetThemeEvent._() : super._();
}

/// @nodoc
abstract class $SelectThemeEventCopyWith<$Res> {
  factory $SelectThemeEventCopyWith(
          SelectThemeEvent value, $Res Function(SelectThemeEvent) then) =
      _$SelectThemeEventCopyWithImpl<$Res>;
  $Res call({String themeType});
}

/// @nodoc
class _$SelectThemeEventCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements $SelectThemeEventCopyWith<$Res> {
  _$SelectThemeEventCopyWithImpl(
      SelectThemeEvent _value, $Res Function(SelectThemeEvent) _then)
      : super(_value, (v) => _then(v as SelectThemeEvent));

  @override
  SelectThemeEvent get _value => super._value as SelectThemeEvent;

  @override
  $Res call({
    Object? themeType = freezed,
  }) {
    return _then(SelectThemeEvent(
      themeType == freezed
          ? _value.themeType
          : themeType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectThemeEvent extends SelectThemeEvent {
  const _$SelectThemeEvent(this.themeType) : super._();

  @override
  final String themeType;

  @override
  String toString() {
    return 'SettingsEvent.selectTheme(themeType: $themeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectThemeEvent &&
            (identical(other.themeType, themeType) ||
                const DeepCollectionEquality()
                    .equals(other.themeType, themeType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(themeType);

  @JsonKey(ignore: true)
  @override
  $SelectThemeEventCopyWith<SelectThemeEvent> get copyWith =>
      _$SelectThemeEventCopyWithImpl<SelectThemeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFiatCurrency,
    required TResult Function(String fiatCurrency) selectFiatCurrency,
    required TResult Function() getTheme,
    required TResult Function(String themeType) selectTheme,
  }) {
    return selectTheme(themeType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getFiatCurrency,
    TResult Function(String fiatCurrency)? selectFiatCurrency,
    TResult Function()? getTheme,
    TResult Function(String themeType)? selectTheme,
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
    TResult Function(GetFiatCurrencyEvent value)? getFiatCurrency,
    TResult Function(SelectFiatCurrencyEvent value)? selectFiatCurrency,
    TResult Function(GetThemeEvent value)? getTheme,
    TResult Function(SelectThemeEvent value)? selectTheme,
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
  const factory SelectThemeEvent(String themeType) = _$SelectThemeEvent;
  const SelectThemeEvent._() : super._();

  String get themeType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectThemeEventCopyWith<SelectThemeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
