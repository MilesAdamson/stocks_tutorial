// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'candle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CandleTearOff {
  const _$CandleTearOff();

  _Candle call(double close, double high, double low, double open,
      DateTime timestamp, int volume) {
    return _Candle(
      close,
      high,
      low,
      open,
      timestamp,
      volume,
    );
  }
}

/// @nodoc
const $Candle = _$CandleTearOff();

/// @nodoc
mixin _$Candle {
  double get close => throw _privateConstructorUsedError;
  double get high => throw _privateConstructorUsedError;
  double get low => throw _privateConstructorUsedError;
  double get open => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  int get volume => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CandleCopyWith<Candle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CandleCopyWith<$Res> {
  factory $CandleCopyWith(Candle value, $Res Function(Candle) then) =
      _$CandleCopyWithImpl<$Res>;
  $Res call(
      {double close,
      double high,
      double low,
      double open,
      DateTime timestamp,
      int volume});
}

/// @nodoc
class _$CandleCopyWithImpl<$Res> implements $CandleCopyWith<$Res> {
  _$CandleCopyWithImpl(this._value, this._then);

  final Candle _value;
  // ignore: unused_field
  final $Res Function(Candle) _then;

  @override
  $Res call({
    Object? close = freezed,
    Object? high = freezed,
    Object? low = freezed,
    Object? open = freezed,
    Object? timestamp = freezed,
    Object? volume = freezed,
  }) {
    return _then(_value.copyWith(
      close: close == freezed
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double,
      low: low == freezed
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double,
      open: open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CandleCopyWith<$Res> implements $CandleCopyWith<$Res> {
  factory _$CandleCopyWith(_Candle value, $Res Function(_Candle) then) =
      __$CandleCopyWithImpl<$Res>;
  @override
  $Res call(
      {double close,
      double high,
      double low,
      double open,
      DateTime timestamp,
      int volume});
}

/// @nodoc
class __$CandleCopyWithImpl<$Res> extends _$CandleCopyWithImpl<$Res>
    implements _$CandleCopyWith<$Res> {
  __$CandleCopyWithImpl(_Candle _value, $Res Function(_Candle) _then)
      : super(_value, (v) => _then(v as _Candle));

  @override
  _Candle get _value => super._value as _Candle;

  @override
  $Res call({
    Object? close = freezed,
    Object? high = freezed,
    Object? low = freezed,
    Object? open = freezed,
    Object? timestamp = freezed,
    Object? volume = freezed,
  }) {
    return _then(_Candle(
      close == freezed
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
      high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double,
      low == freezed
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double,
      open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Candle implements _Candle {
  _$_Candle(
      this.close, this.high, this.low, this.open, this.timestamp, this.volume);

  @override
  final double close;
  @override
  final double high;
  @override
  final double low;
  @override
  final double open;
  @override
  final DateTime timestamp;
  @override
  final int volume;

  @override
  String toString() {
    return 'Candle(close: $close, high: $high, low: $low, open: $open, timestamp: $timestamp, volume: $volume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Candle &&
            const DeepCollectionEquality().equals(other.close, close) &&
            const DeepCollectionEquality().equals(other.high, high) &&
            const DeepCollectionEquality().equals(other.low, low) &&
            const DeepCollectionEquality().equals(other.open, open) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality().equals(other.volume, volume));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(close),
      const DeepCollectionEquality().hash(high),
      const DeepCollectionEquality().hash(low),
      const DeepCollectionEquality().hash(open),
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(volume));

  @JsonKey(ignore: true)
  @override
  _$CandleCopyWith<_Candle> get copyWith =>
      __$CandleCopyWithImpl<_Candle>(this, _$identity);
}

abstract class _Candle implements Candle {
  factory _Candle(double close, double high, double low, double open,
      DateTime timestamp, int volume) = _$_Candle;

  @override
  double get close;
  @override
  double get high;
  @override
  double get low;
  @override
  double get open;
  @override
  DateTime get timestamp;
  @override
  int get volume;
  @override
  @JsonKey(ignore: true)
  _$CandleCopyWith<_Candle> get copyWith => throw _privateConstructorUsedError;
}
