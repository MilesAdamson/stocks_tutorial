import 'package:flutter/material.dart';
import 'package:stocks_tutorial/models/candle.dart';
import 'package:stocks_tutorial/utils/candle_helper.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartPage extends StatefulWidget {
  static const minimumCandles = 5;

  final List<Candle> candles;

  ChartPage({
    Key? key,
    required this.candles,
  }) : super(key: key) {
    assert(candles.length >= minimumCandles);
  }

  @override
  State<StatefulWidget> createState() => ChartPageState();
}

class ChartPageState extends State<ChartPage> {
  static const padding = 0.05;

  late final double dataMaximum = widget.candles.max;
  late final double dataMinimum = widget.candles.min;
  late final double plotMaximum = dataMaximum * (1 + padding);
  late final double plotMinimum = dataMinimum * (1 - padding);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syncfusion Flutter chart'),
      ),
      body: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(
          minimum: plotMinimum.roundToDouble(),
          maximum: plotMaximum.roundToDouble(),
          interval: 1,
        ),
        series: <ChartSeries<Candle, DateTime>>[
          widget.candles.candleSeries,
        ],
      ),
    );
  }
}
