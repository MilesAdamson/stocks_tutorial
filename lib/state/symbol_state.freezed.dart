// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'symbol_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SymbolStateTearOff {
  const _$SymbolStateTearOff();

  _SymbolState call(List<Candle> candles, bool isLoading, bool failedToLoad) {
    return _SymbolState(
      candles,
      isLoading,
      failedToLoad,
    );
  }
}

/// @nodoc
const $SymbolState = _$SymbolStateTearOff();

/// @nodoc
mixin _$SymbolState {
  List<Candle> get candles => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get failedToLoad => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SymbolStateCopyWith<SymbolState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymbolStateCopyWith<$Res> {
  factory $SymbolStateCopyWith(
          SymbolState value, $Res Function(SymbolState) then) =
      _$SymbolStateCopyWithImpl<$Res>;
  $Res call({List<Candle> candles, bool isLoading, bool failedToLoad});
}

/// @nodoc
class _$SymbolStateCopyWithImpl<$Res> implements $SymbolStateCopyWith<$Res> {
  _$SymbolStateCopyWithImpl(this._value, this._then);

  final SymbolState _value;
  // ignore: unused_field
  final $Res Function(SymbolState) _then;

  @override
  $Res call({
    Object? candles = freezed,
    Object? isLoading = freezed,
    Object? failedToLoad = freezed,
  }) {
    return _then(_value.copyWith(
      candles: candles == freezed
          ? _value.candles
          : candles // ignore: cast_nullable_to_non_nullable
              as List<Candle>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failedToLoad: failedToLoad == freezed
          ? _value.failedToLoad
          : failedToLoad // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SymbolStateCopyWith<$Res>
    implements $SymbolStateCopyWith<$Res> {
  factory _$SymbolStateCopyWith(
          _SymbolState value, $Res Function(_SymbolState) then) =
      __$SymbolStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Candle> candles, bool isLoading, bool failedToLoad});
}

/// @nodoc
class __$SymbolStateCopyWithImpl<$Res> extends _$SymbolStateCopyWithImpl<$Res>
    implements _$SymbolStateCopyWith<$Res> {
  __$SymbolStateCopyWithImpl(
      _SymbolState _value, $Res Function(_SymbolState) _then)
      : super(_value, (v) => _then(v as _SymbolState));

  @override
  _SymbolState get _value => super._value as _SymbolState;

  @override
  $Res call({
    Object? candles = freezed,
    Object? isLoading = freezed,
    Object? failedToLoad = freezed,
  }) {
    return _then(_SymbolState(
      candles == freezed
          ? _value.candles
          : candles // ignore: cast_nullable_to_non_nullable
              as List<Candle>,
      isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failedToLoad == freezed
          ? _value.failedToLoad
          : failedToLoad // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SymbolState implements _SymbolState {
  _$_SymbolState(this.candles, this.isLoading, this.failedToLoad);

  @override
  final List<Candle> candles;
  @override
  final bool isLoading;
  @override
  final bool failedToLoad;

  @override
  String toString() {
    return 'SymbolState(candles: $candles, isLoading: $isLoading, failedToLoad: $failedToLoad)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SymbolState &&
            const DeepCollectionEquality().equals(other.candles, candles) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.failedToLoad, failedToLoad));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(candles),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(failedToLoad));

  @JsonKey(ignore: true)
  @override
  _$SymbolStateCopyWith<_SymbolState> get copyWith =>
      __$SymbolStateCopyWithImpl<_SymbolState>(this, _$identity);
}

abstract class _SymbolState implements SymbolState {
  factory _SymbolState(
      List<Candle> candles, bool isLoading, bool failedToLoad) = _$_SymbolState;

  @override
  List<Candle> get candles;
  @override
  bool get isLoading;
  @override
  bool get failedToLoad;
  @override
  @JsonKey(ignore: true)
  _$SymbolStateCopyWith<_SymbolState> get copyWith =>
      throw _privateConstructorUsedError;
}
