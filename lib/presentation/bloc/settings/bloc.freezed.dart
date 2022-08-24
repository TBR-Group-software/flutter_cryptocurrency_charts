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
abstract class _$$GetFiatCurrencyEventCopyWith<$Res> {
  factory _$$GetFiatCurrencyEventCopyWith(_$GetFiatCurrencyEvent value,
          $Res Function(_$GetFiatCurrencyEvent) then) =
      __$$GetFiatCurrencyEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFiatCurrencyEventCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$$GetFiatCurrencyEventCopyWith<$Res> {
  __$$GetFiatCurrencyEventCopyWithImpl(_$GetFiatCurrencyEvent _value,
      $Res Function(_$GetFiatCurrencyEvent) _then)
      : super(_value, (v) => _then(v as _$GetFiatCurrencyEvent));

  @override
  _$GetFiatCurrencyEvent get _value => super._value as _$GetFiatCurrencyEvent;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetFiatCurrencyEvent);
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
abstract class _$$SelectFiatCurrencyEventCopyWith<$Res> {
  factory _$$SelectFiatCurrencyEventCopyWith(_$SelectFiatCurrencyEvent value,
          $Res Function(_$SelectFiatCurrencyEvent) then) =
      __$$SelectFiatCurrencyEventCopyWithImpl<$Res>;
  $Res call({String fiatCurrency});
}

/// @nodoc
class __$$SelectFiatCurrencyEventCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$$SelectFiatCurrencyEventCopyWith<$Res> {
  __$$SelectFiatCurrencyEventCopyWithImpl(_$SelectFiatCurrencyEvent _value,
      $Res Function(_$SelectFiatCurrencyEvent) _then)
      : super(_value, (v) => _then(v as _$SelectFiatCurrencyEvent));

  @override
  _$SelectFiatCurrencyEvent get _value =>
      super._value as _$SelectFiatCurrencyEvent;

  @override
  $Res call({
    Object? fiatCurrency = freezed,
  }) {
    return _then(_$SelectFiatCurrencyEvent(
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
        (other.runtimeType == runtimeType &&
            other is _$SelectFiatCurrencyEvent &&
            const DeepCollectionEquality()
                .equals(other.fiatCurrency, fiatCurrency));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(fiatCurrency));

  @JsonKey(ignore: true)
  @override
  _$$SelectFiatCurrencyEventCopyWith<_$SelectFiatCurrencyEvent> get copyWith =>
      __$$SelectFiatCurrencyEventCopyWithImpl<_$SelectFiatCurrencyEvent>(
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
  const factory SelectFiatCurrencyEvent(final String fiatCurrency) =
      _$SelectFiatCurrencyEvent;
  const SelectFiatCurrencyEvent._() : super._();

  String get fiatCurrency;
  @JsonKey(ignore: true)
  _$$SelectFiatCurrencyEventCopyWith<_$SelectFiatCurrencyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetThemeEventCopyWith<$Res> {
  factory _$$GetThemeEventCopyWith(
          _$GetThemeEvent value, $Res Function(_$GetThemeEvent) then) =
      __$$GetThemeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetThemeEventCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$$GetThemeEventCopyWith<$Res> {
  __$$GetThemeEventCopyWithImpl(
      _$GetThemeEvent _value, $Res Function(_$GetThemeEvent) _then)
      : super(_value, (v) => _then(v as _$GetThemeEvent));

  @override
  _$GetThemeEvent get _value => super._value as _$GetThemeEvent;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetThemeEvent);
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
abstract class _$$SelectThemeEventCopyWith<$Res> {
  factory _$$SelectThemeEventCopyWith(
          _$SelectThemeEvent value, $Res Function(_$SelectThemeEvent) then) =
      __$$SelectThemeEventCopyWithImpl<$Res>;
  $Res call({String themeType});
}

/// @nodoc
class __$$SelectThemeEventCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$$SelectThemeEventCopyWith<$Res> {
  __$$SelectThemeEventCopyWithImpl(
      _$SelectThemeEvent _value, $Res Function(_$SelectThemeEvent) _then)
      : super(_value, (v) => _then(v as _$SelectThemeEvent));

  @override
  _$SelectThemeEvent get _value => super._value as _$SelectThemeEvent;

  @override
  $Res call({
    Object? themeType = freezed,
  }) {
    return _then(_$SelectThemeEvent(
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
        (other.runtimeType == runtimeType &&
            other is _$SelectThemeEvent &&
            const DeepCollectionEquality().equals(other.themeType, themeType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(themeType));

  @JsonKey(ignore: true)
  @override
  _$$SelectThemeEventCopyWith<_$SelectThemeEvent> get copyWith =>
      __$$SelectThemeEventCopyWithImpl<_$SelectThemeEvent>(this, _$identity);

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
  const factory SelectThemeEvent(final String themeType) = _$SelectThemeEvent;
  const SelectThemeEvent._() : super._();

  String get themeType;
  @JsonKey(ignore: true)
  _$$SelectThemeEventCopyWith<_$SelectThemeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
