// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'candles_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CandlesPayload _$CandlesPayloadFromJson(Map<String, dynamic> json) {
  return _CandlesPayload.fromJson(json);
}

/// @nodoc
class _$CandlesPayloadTearOff {
  const _$CandlesPayloadTearOff();

  _CandlesPayload call(
      @JsonKey(name: 'c') List<double> close,
      @JsonKey(name: 'h') List<double> high,
      @JsonKey(name: 'l') List<double> low,
      @JsonKey(name: 'o') List<double> open,
      @JsonKey(name: 't') List<int> unixTimestamp,
      @JsonKey(name: 'v') List<double> volume) {
    return _CandlesPayload(
      close,
      high,
      low,
      open,
      unixTimestamp,
      volume,
    );
  }

  CandlesPayload fromJson(Map<String, Object?> json) {
    return CandlesPayload.fromJson(json);
  }
}

/// @nodoc
const $CandlesPayload = _$CandlesPayloadTearOff();

/// @nodoc
mixin _$CandlesPayload {
  @JsonKey(name: 'c')
  List<double> get close => throw _privateConstructorUsedError;
  @JsonKey(name: 'h')
  List<double> get high => throw _privateConstructorUsedError;
  @JsonKey(name: 'l')
  List<double> get low => throw _privateConstructorUsedError;
  @JsonKey(name: 'o')
  List<double> get open => throw _privateConstructorUsedError;
  @JsonKey(name: 't')
  List<int> get unixTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'v')
  List<double> get volume => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CandlesPayloadCopyWith<CandlesPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CandlesPayloadCopyWith<$Res> {
  factory $CandlesPayloadCopyWith(
          CandlesPayload value, $Res Function(CandlesPayload) then) =
      _$CandlesPayloadCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'c') List<double> close,
      @JsonKey(name: 'h') List<double> high,
      @JsonKey(name: 'l') List<double> low,
      @JsonKey(name: 'o') List<double> open,
      @JsonKey(name: 't') List<int> unixTimestamp,
      @JsonKey(name: 'v') List<double> volume});
}

/// @nodoc
class _$CandlesPayloadCopyWithImpl<$Res>
    implements $CandlesPayloadCopyWith<$Res> {
  _$CandlesPayloadCopyWithImpl(this._value, this._then);

  final CandlesPayload _value;
  // ignore: unused_field
  final $Res Function(CandlesPayload) _then;

  @override
  $Res call({
    Object? close = freezed,
    Object? high = freezed,
    Object? low = freezed,
    Object? open = freezed,
    Object? unixTimestamp = freezed,
    Object? volume = freezed,
  }) {
    return _then(_value.copyWith(
      close: close == freezed
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as List<double>,
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as List<double>,
      low: low == freezed
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as List<double>,
      open: open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as List<double>,
      unixTimestamp: unixTimestamp == freezed
          ? _value.unixTimestamp
          : unixTimestamp // ignore: cast_nullable_to_non_nullable
              as List<int>,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
abstract class _$CandlesPayloadCopyWith<$Res>
    implements $CandlesPayloadCopyWith<$Res> {
  factory _$CandlesPayloadCopyWith(
          _CandlesPayload value, $Res Function(_CandlesPayload) then) =
      __$CandlesPayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'c') List<double> close,
      @JsonKey(name: 'h') List<double> high,
      @JsonKey(name: 'l') List<double> low,
      @JsonKey(name: 'o') List<double> open,
      @JsonKey(name: 't') List<int> unixTimestamp,
      @JsonKey(name: 'v') List<double> volume});
}

/// @nodoc
class __$CandlesPayloadCopyWithImpl<$Res>
    extends _$CandlesPayloadCopyWithImpl<$Res>
    implements _$CandlesPayloadCopyWith<$Res> {
  __$CandlesPayloadCopyWithImpl(
      _CandlesPayload _value, $Res Function(_CandlesPayload) _then)
      : super(_value, (v) => _then(v as _CandlesPayload));

  @override
  _CandlesPayload get _value => super._value as _CandlesPayload;

  @override
  $Res call({
    Object? close = freezed,
    Object? high = freezed,
    Object? low = freezed,
    Object? open = freezed,
    Object? unixTimestamp = freezed,
    Object? volume = freezed,
  }) {
    return _then(_CandlesPayload(
      close == freezed
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as List<double>,
      high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as List<double>,
      low == freezed
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as List<double>,
      open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as List<double>,
      unixTimestamp == freezed
          ? _value.unixTimestamp
          : unixTimestamp // ignore: cast_nullable_to_non_nullable
              as List<int>,
      volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CandlesPayload extends _CandlesPayload {
  _$_CandlesPayload(
      @JsonKey(name: 'c') this.close,
      @JsonKey(name: 'h') this.high,
      @JsonKey(name: 'l') this.low,
      @JsonKey(name: 'o') this.open,
      @JsonKey(name: 't') this.unixTimestamp,
      @JsonKey(name: 'v') this.volume)
      : super._();

  factory _$_CandlesPayload.fromJson(Map<String, dynamic> json) =>
      _$$_CandlesPayloadFromJson(json);

  @override
  @JsonKey(name: 'c')
  final List<double> close;
  @override
  @JsonKey(name: 'h')
  final List<double> high;
  @override
  @JsonKey(name: 'l')
  final List<double> low;
  @override
  @JsonKey(name: 'o')
  final List<double> open;
  @override
  @JsonKey(name: 't')
  final List<int> unixTimestamp;
  @override
  @JsonKey(name: 'v')
  final List<double> volume;

  @override
  String toString() {
    return 'CandlesPayload(close: $close, high: $high, low: $low, open: $open, unixTimestamp: $unixTimestamp, volume: $volume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CandlesPayload &&
            const DeepCollectionEquality().equals(other.close, close) &&
            const DeepCollectionEquality().equals(other.high, high) &&
            const DeepCollectionEquality().equals(other.low, low) &&
            const DeepCollectionEquality().equals(other.open, open) &&
            const DeepCollectionEquality()
                .equals(other.unixTimestamp, unixTimestamp) &&
            const DeepCollectionEquality().equals(other.volume, volume));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(close),
      const DeepCollectionEquality().hash(high),
      const DeepCollectionEquality().hash(low),
      const DeepCollectionEquality().hash(open),
      const DeepCollectionEquality().hash(unixTimestamp),
      const DeepCollectionEquality().hash(volume));

  @JsonKey(ignore: true)
  @override
  _$CandlesPayloadCopyWith<_CandlesPayload> get copyWith =>
      __$CandlesPayloadCopyWithImpl<_CandlesPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CandlesPayloadToJson(this);
  }
}

abstract class _CandlesPayload extends CandlesPayload {
  factory _CandlesPayload(
      @JsonKey(name: 'c') List<double> close,
      @JsonKey(name: 'h') List<double> high,
      @JsonKey(name: 'l') List<double> low,
      @JsonKey(name: 'o') List<double> open,
      @JsonKey(name: 't') List<int> unixTimestamp,
      @JsonKey(name: 'v') List<double> volume) = _$_CandlesPayload;
  _CandlesPayload._() : super._();

  factory _CandlesPayload.fromJson(Map<String, dynamic> json) =
      _$_CandlesPayload.fromJson;

  @override
  @JsonKey(name: 'c')
  List<double> get close;
  @override
  @JsonKey(name: 'h')
  List<double> get high;
  @override
  @JsonKey(name: 'l')
  List<double> get low;
  @override
  @JsonKey(name: 'o')
  List<double> get open;
  @override
  @JsonKey(name: 't')
  List<int> get unixTimestamp;
  @override
  @JsonKey(name: 'v')
  List<double> get volume;
  @override
  @JsonKey(ignore: true)
  _$CandlesPayloadCopyWith<_CandlesPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
