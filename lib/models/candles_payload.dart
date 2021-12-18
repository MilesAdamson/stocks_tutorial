// ignore_for_file: invalid_annotation_target

import 'package:candlesticks/candlesticks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'candles_payload.freezed.dart';
part 'candles_payload.g.dart';

@freezed
class CandlesPayload with _$CandlesPayload {
  const CandlesPayload._();

  @JsonSerializable(explicitToJson: true)
  factory CandlesPayload(
    @JsonKey(name: 'c') List<double> close,
    @JsonKey(name: 'h') List<double> high,
    @JsonKey(name: 'l') List<double> low,
    @JsonKey(name: 'o') List<double> open,
    @JsonKey(name: 't') List<int> unixTimestamp,
    @JsonKey(name: 'v') List<double> volume,
  ) = _CandlesPayload;

  factory CandlesPayload.fromJson(Map<String, dynamic> json) =>
      _$CandlesPayloadFromJson(json);

  /// This method groups the data by timestamp. Why someone designed this
  /// api with everything split up into different lists is beyond me
  List<Candle> toCandles() {
    final candles = <Candle>[];
    assert(
      [
        close.length,
        high.length,
        low.length,
        open.length,
        unixTimestamp.length,
        volume.length,
      ].every(
        (length) => [
          close.length,
          high.length,
          low.length,
          open.length,
          unixTimestamp.length,
          volume.length
        ].every((len) => len == length),
      ),
      "All data sets must be the same length",
    );

    for (int i = 0; i < close.length; i++) {
      candles.add(Candle(
        close: close[i],
        high: high[i],
        low: low[i],
        open: open[i],
        date: DateTime.fromMillisecondsSinceEpoch(unixTimestamp[i]),
        volume: volume[i],
      ));
    }

    return candles;
  }
}
