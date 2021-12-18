// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_candles_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetCandlesRequest _$GetCandlesRequestFromJson(Map<String, dynamic> json) {
  return _GetCandlesRequest.fromJson(json);
}

/// @nodoc
class _$GetCandlesRequestTearOff {
  const _$GetCandlesRequestTearOff();

  _GetCandlesRequest call(
      @JsonKey(toJson: ResolutionExtensions.toJson) Resolution resolution,
      @JsonKey(toJson: DateTimeHelper.toJson) DateTime to,
      @JsonKey(toJson: DateTimeHelper.toJson) DateTime from,
      String symbol) {
    return _GetCandlesRequest(
      resolution,
      to,
      from,
      symbol,
    );
  }

  GetCandlesRequest fromJson(Map<String, Object?> json) {
    return GetCandlesRequest.fromJson(json);
  }
}

/// @nodoc
const $GetCandlesRequest = _$GetCandlesRequestTearOff();

/// @nodoc
mixin _$GetCandlesRequest {
  @JsonKey(toJson: ResolutionExtensions.toJson)
  Resolution get resolution => throw _privateConstructorUsedError;
  @JsonKey(toJson: DateTimeHelper.toJson)
  DateTime get to => throw _privateConstructorUsedError;
  @JsonKey(toJson: DateTimeHelper.toJson)
  DateTime get from => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCandlesRequestCopyWith<GetCandlesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCandlesRequestCopyWith<$Res> {
  factory $GetCandlesRequestCopyWith(
          GetCandlesRequest value, $Res Function(GetCandlesRequest) then) =
      _$GetCandlesRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(toJson: ResolutionExtensions.toJson) Resolution resolution,
      @JsonKey(toJson: DateTimeHelper.toJson) DateTime to,
      @JsonKey(toJson: DateTimeHelper.toJson) DateTime from,
      String symbol});
}

/// @nodoc
class _$GetCandlesRequestCopyWithImpl<$Res>
    implements $GetCandlesRequestCopyWith<$Res> {
  _$GetCandlesRequestCopyWithImpl(this._value, this._then);

  final GetCandlesRequest _value;
  // ignore: unused_field
  final $Res Function(GetCandlesRequest) _then;

  @override
  $Res call({
    Object? resolution = freezed,
    Object? to = freezed,
    Object? from = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_value.copyWith(
      resolution: resolution == freezed
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as Resolution,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetCandlesRequestCopyWith<$Res>
    implements $GetCandlesRequestCopyWith<$Res> {
  factory _$GetCandlesRequestCopyWith(
          _GetCandlesRequest value, $Res Function(_GetCandlesRequest) then) =
      __$GetCandlesRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(toJson: ResolutionExtensions.toJson) Resolution resolution,
      @JsonKey(toJson: DateTimeHelper.toJson) DateTime to,
      @JsonKey(toJson: DateTimeHelper.toJson) DateTime from,
      String symbol});
}

/// @nodoc
class __$GetCandlesRequestCopyWithImpl<$Res>
    extends _$GetCandlesRequestCopyWithImpl<$Res>
    implements _$GetCandlesRequestCopyWith<$Res> {
  __$GetCandlesRequestCopyWithImpl(
      _GetCandlesRequest _value, $Res Function(_GetCandlesRequest) _then)
      : super(_value, (v) => _then(v as _GetCandlesRequest));

  @override
  _GetCandlesRequest get _value => super._value as _GetCandlesRequest;

  @override
  $Res call({
    Object? resolution = freezed,
    Object? to = freezed,
    Object? from = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_GetCandlesRequest(
      resolution == freezed
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as Resolution,
      to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
      from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GetCandlesRequest extends _GetCandlesRequest {
  _$_GetCandlesRequest(
      @JsonKey(toJson: ResolutionExtensions.toJson) this.resolution,
      @JsonKey(toJson: DateTimeHelper.toJson) this.to,
      @JsonKey(toJson: DateTimeHelper.toJson) this.from,
      this.symbol)
      : super._();

  factory _$_GetCandlesRequest.fromJson(Map<String, dynamic> json) =>
      _$$_GetCandlesRequestFromJson(json);

  @override
  @JsonKey(toJson: ResolutionExtensions.toJson)
  final Resolution resolution;
  @override
  @JsonKey(toJson: DateTimeHelper.toJson)
  final DateTime to;
  @override
  @JsonKey(toJson: DateTimeHelper.toJson)
  final DateTime from;
  @override
  final String symbol;

  @override
  String toString() {
    return 'GetCandlesRequest(resolution: $resolution, to: $to, from: $from, symbol: $symbol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetCandlesRequest &&
            const DeepCollectionEquality()
                .equals(other.resolution, resolution) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.symbol, symbol));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(resolution),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(symbol));

  @JsonKey(ignore: true)
  @override
  _$GetCandlesRequestCopyWith<_GetCandlesRequest> get copyWith =>
      __$GetCandlesRequestCopyWithImpl<_GetCandlesRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetCandlesRequestToJson(this);
  }
}

abstract class _GetCandlesRequest extends GetCandlesRequest {
  factory _GetCandlesRequest(
      @JsonKey(toJson: ResolutionExtensions.toJson) Resolution resolution,
      @JsonKey(toJson: DateTimeHelper.toJson) DateTime to,
      @JsonKey(toJson: DateTimeHelper.toJson) DateTime from,
      String symbol) = _$_GetCandlesRequest;
  _GetCandlesRequest._() : super._();

  factory _GetCandlesRequest.fromJson(Map<String, dynamic> json) =
      _$_GetCandlesRequest.fromJson;

  @override
  @JsonKey(toJson: ResolutionExtensions.toJson)
  Resolution get resolution;
  @override
  @JsonKey(toJson: DateTimeHelper.toJson)
  DateTime get to;
  @override
  @JsonKey(toJson: DateTimeHelper.toJson)
  DateTime get from;
  @override
  String get symbol;
  @override
  @JsonKey(ignore: true)
  _$GetCandlesRequestCopyWith<_GetCandlesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
