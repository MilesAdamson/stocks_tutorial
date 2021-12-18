// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call(List<Candle> candles, String? currentSymbol, bool isLoading,
      bool hasError, String? errorMessage, GetCandlesRequest? recentQuery) {
    return _AppState(
      candles,
      currentSymbol,
      isLoading,
      hasError,
      errorMessage,
      recentQuery,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  List<Candle> get candles => throw _privateConstructorUsedError;
  String? get currentSymbol => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  GetCandlesRequest? get recentQuery => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {List<Candle> candles,
      String? currentSymbol,
      bool isLoading,
      bool hasError,
      String? errorMessage,
      GetCandlesRequest? recentQuery});

  $GetCandlesRequestCopyWith<$Res>? get recentQuery;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? candles = freezed,
    Object? currentSymbol = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? errorMessage = freezed,
    Object? recentQuery = freezed,
  }) {
    return _then(_value.copyWith(
      candles: candles == freezed
          ? _value.candles
          : candles // ignore: cast_nullable_to_non_nullable
              as List<Candle>,
      currentSymbol: currentSymbol == freezed
          ? _value.currentSymbol
          : currentSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      recentQuery: recentQuery == freezed
          ? _value.recentQuery
          : recentQuery // ignore: cast_nullable_to_non_nullable
              as GetCandlesRequest?,
    ));
  }

  @override
  $GetCandlesRequestCopyWith<$Res>? get recentQuery {
    if (_value.recentQuery == null) {
      return null;
    }

    return $GetCandlesRequestCopyWith<$Res>(_value.recentQuery!, (value) {
      return _then(_value.copyWith(recentQuery: value));
    });
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Candle> candles,
      String? currentSymbol,
      bool isLoading,
      bool hasError,
      String? errorMessage,
      GetCandlesRequest? recentQuery});

  @override
  $GetCandlesRequestCopyWith<$Res>? get recentQuery;
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object? candles = freezed,
    Object? currentSymbol = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? errorMessage = freezed,
    Object? recentQuery = freezed,
  }) {
    return _then(_AppState(
      candles == freezed
          ? _value.candles
          : candles // ignore: cast_nullable_to_non_nullable
              as List<Candle>,
      currentSymbol == freezed
          ? _value.currentSymbol
          : currentSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      recentQuery == freezed
          ? _value.recentQuery
          : recentQuery // ignore: cast_nullable_to_non_nullable
              as GetCandlesRequest?,
    ));
  }
}

/// @nodoc

class _$_AppState implements _AppState {
  _$_AppState(this.candles, this.currentSymbol, this.isLoading, this.hasError,
      this.errorMessage, this.recentQuery);

  @override
  final List<Candle> candles;
  @override
  final String? currentSymbol;
  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? errorMessage;
  @override
  final GetCandlesRequest? recentQuery;

  @override
  String toString() {
    return 'AppState(candles: $candles, currentSymbol: $currentSymbol, isLoading: $isLoading, hasError: $hasError, errorMessage: $errorMessage, recentQuery: $recentQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppState &&
            const DeepCollectionEquality().equals(other.candles, candles) &&
            const DeepCollectionEquality()
                .equals(other.currentSymbol, currentSymbol) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.recentQuery, recentQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(candles),
      const DeepCollectionEquality().hash(currentSymbol),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(recentQuery));

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  factory _AppState(
      List<Candle> candles,
      String? currentSymbol,
      bool isLoading,
      bool hasError,
      String? errorMessage,
      GetCandlesRequest? recentQuery) = _$_AppState;

  @override
  List<Candle> get candles;
  @override
  String? get currentSymbol;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get errorMessage;
  @override
  GetCandlesRequest? get recentQuery;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
