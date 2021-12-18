// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocks_tutorial/models/candle.dart';

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

  /// This method groups the data by timestamp. It is
  /// much easier to plot if we group the data this way
  List<Candle> toCandles() {
    final candles = <Candle>[];
    assert(
      {
            close.length,
            high.length,
            low.length,
            open.length,
            unixTimestamp.length,
            volume.length,
          }.length ==
          1,
      "All data sets must be the same length",
    );

    for (int i = 0; i < close.length; i++) {
      candles.add(Candle(
        close[i],
        high[i],
        low[i],
        open[i],
        DateTime.fromMillisecondsSinceEpoch(unixTimestamp[i] * 1000),
        volume[i],
      ));
    }

    return candles;
  }
}
