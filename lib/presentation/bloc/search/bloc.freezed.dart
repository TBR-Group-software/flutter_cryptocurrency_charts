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
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchQuery) getSearchedCoins,
    required TResult Function() getTrendingCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchQuery)? getSearchedCoins,
    TResult Function()? getTrendingCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery)? getSearchedCoins,
    TResult Function()? getTrendingCoins,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSearchedCoinsEvent value) getSearchedCoins,
    required TResult Function(GetTrendingCoinsEvent value) getTrendingCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetSearchedCoinsEvent value)? getSearchedCoins,
    TResult Function(GetTrendingCoinsEvent value)? getTrendingCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSearchedCoinsEvent value)? getSearchedCoins,
    TResult Function(GetTrendingCoinsEvent value)? getTrendingCoins,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class _$$GetSearchedCoinsEventCopyWith<$Res> {
  factory _$$GetSearchedCoinsEventCopyWith(_$GetSearchedCoinsEvent value,
          $Res Function(_$GetSearchedCoinsEvent) then) =
      __$$GetSearchedCoinsEventCopyWithImpl<$Res>;
  $Res call({String searchQuery});
}

/// @nodoc
class __$$GetSearchedCoinsEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$GetSearchedCoinsEventCopyWith<$Res> {
  __$$GetSearchedCoinsEventCopyWithImpl(_$GetSearchedCoinsEvent _value,
      $Res Function(_$GetSearchedCoinsEvent) _then)
      : super(_value, (v) => _then(v as _$GetSearchedCoinsEvent));

  @override
  _$GetSearchedCoinsEvent get _value => super._value as _$GetSearchedCoinsEvent;

  @override
  $Res call({
    Object? searchQuery = freezed,
  }) {
    return _then(_$GetSearchedCoinsEvent(
      searchQuery == freezed
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSearchedCoinsEvent extends GetSearchedCoinsEvent {
  const _$GetSearchedCoinsEvent(this.searchQuery) : super._();

  @override
  final String searchQuery;

  @override
  String toString() {
    return 'SearchEvent.getSearchedCoins(searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSearchedCoinsEvent &&
            const DeepCollectionEquality()
                .equals(other.searchQuery, searchQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(searchQuery));

  @JsonKey(ignore: true)
  @override
  _$$GetSearchedCoinsEventCopyWith<_$GetSearchedCoinsEvent> get copyWith =>
      __$$GetSearchedCoinsEventCopyWithImpl<_$GetSearchedCoinsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchQuery) getSearchedCoins,
    required TResult Function() getTrendingCoins,
  }) {
    return getSearchedCoins(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchQuery)? getSearchedCoins,
    TResult Function()? getTrendingCoins,
  }) {
    return getSearchedCoins?.call(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery)? getSearchedCoins,
    TResult Function()? getTrendingCoins,
    required TResult orElse(),
  }) {
    if (getSearchedCoins != null) {
      return getSearchedCoins(searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSearchedCoinsEvent value) getSearchedCoins,
    required TResult Function(GetTrendingCoinsEvent value) getTrendingCoins,
  }) {
    return getSearchedCoins(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetSearchedCoinsEvent value)? getSearchedCoins,
    TResult Function(GetTrendingCoinsEvent value)? getTrendingCoins,
  }) {
    return getSearchedCoins?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSearchedCoinsEvent value)? getSearchedCoins,
    TResult Function(GetTrendingCoinsEvent value)? getTrendingCoins,
    required TResult orElse(),
  }) {
    if (getSearchedCoins != null) {
      return getSearchedCoins(this);
    }
    return orElse();
  }
}

abstract class GetSearchedCoinsEvent extends SearchEvent {
  const factory GetSearchedCoinsEvent(final String searchQuery) =
      _$GetSearchedCoinsEvent;
  const GetSearchedCoinsEvent._() : super._();

  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetSearchedCoinsEventCopyWith<_$GetSearchedCoinsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTrendingCoinsEventCopyWith<$Res> {
  factory _$$GetTrendingCoinsEventCopyWith(_$GetTrendingCoinsEvent value,
          $Res Function(_$GetTrendingCoinsEvent) then) =
      __$$GetTrendingCoinsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTrendingCoinsEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$GetTrendingCoinsEventCopyWith<$Res> {
  __$$GetTrendingCoinsEventCopyWithImpl(_$GetTrendingCoinsEvent _value,
      $Res Function(_$GetTrendingCoinsEvent) _then)
      : super(_value, (v) => _then(v as _$GetTrendingCoinsEvent));

  @override
  _$GetTrendingCoinsEvent get _value => super._value as _$GetTrendingCoinsEvent;
}

/// @nodoc

class _$GetTrendingCoinsEvent extends GetTrendingCoinsEvent {
  const _$GetTrendingCoinsEvent() : super._();

  @override
  String toString() {
    return 'SearchEvent.getTrendingCoins()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTrendingCoinsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchQuery) getSearchedCoins,
    required TResult Function() getTrendingCoins,
  }) {
    return getTrendingCoins();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchQuery)? getSearchedCoins,
    TResult Function()? getTrendingCoins,
  }) {
    return getTrendingCoins?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery)? getSearchedCoins,
    TResult Function()? getTrendingCoins,
    required TResult orElse(),
  }) {
    if (getTrendingCoins != null) {
      return getTrendingCoins();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSearchedCoinsEvent value) getSearchedCoins,
    required TResult Function(GetTrendingCoinsEvent value) getTrendingCoins,
  }) {
    return getTrendingCoins(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetSearchedCoinsEvent value)? getSearchedCoins,
    TResult Function(GetTrendingCoinsEvent value)? getTrendingCoins,
  }) {
    return getTrendingCoins?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSearchedCoinsEvent value)? getSearchedCoins,
    TResult Function(GetTrendingCoinsEvent value)? getTrendingCoins,
    required TResult orElse(),
  }) {
    if (getTrendingCoins != null) {
      return getTrendingCoins(this);
    }
    return orElse();
  }
}

abstract class GetTrendingCoinsEvent extends SearchEvent {
  const factory GetTrendingCoinsEvent() = _$GetTrendingCoinsEvent;
  const GetTrendingCoinsEvent._() : super._();
}
