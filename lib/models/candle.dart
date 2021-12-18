// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'candle.freezed.dart';

@freezed
class Candle with _$Candle {
  factory Candle(
    double close,
    double high,
    double low,
    double open,
    DateTime timestamp,
    int volume,
  ) = _CandleViewModel;
}
