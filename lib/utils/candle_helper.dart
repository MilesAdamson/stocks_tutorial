import 'package:flutter/material.dart';
import 'package:stocks_tutorial/models/candle.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

extension CandleHelper on List<Candle> {
  double get max => fold(-double.infinity, (a, b) => a > b.high ? a : b.high);

  double get min => fold(double.infinity, (a, b) => a < b.low ? a : b.low);

  CandleSeries<Candle, DateTime> get candleSeries {
    return CandleSeries<Candle, DateTime>(
      xValueMapper: (c, _) => c.timestamp,
      dataSource: this,
      openValueMapper: (c, _) => c.open,
      highValueMapper: (c, _) => c.high,
      closeValueMapper: (c, _) => c.close,
      lowValueMapper: (c, _) => c.low,
      bearColor: Colors.red,
      bullColor: Colors.green,
    );
  }

  double interval(
    bool isPortrait, {
    int desiredLandscapeInterval = 16,
  }) {
    final desiredLines =
        isPortrait ? desiredLandscapeInterval : desiredLandscapeInterval / 2;
    final plotHeight = max - min;
    return (plotHeight / desiredLines).roundToDouble();
  }

  List<Candle> trimForPerformance(
    bool isPortrait, {
    approximateMaxLength = 1000,
  }) {
    var result = List<Candle>.from(this);
    final overFlowFactor = (length / approximateMaxLength).truncate();

    result =
        result.where((c) => result.indexOf(c) % overFlowFactor == 0).toList();

    return result;
  }
}
