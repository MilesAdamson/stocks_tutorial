import 'package:flutter/material.dart';
import 'package:stocks_tutorial/models/candle.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syncfusion Flutter chart'),
      ),
      body: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(minimum: 0, maximum: 200, interval: 1),
        series: <ChartSeries<Candle, DateTime>>[
          BoxAndWhiskerSeries<Candle, DateTime>(
            dataSource: widget.candles,
            xValueMapper: (Candle data, _) => data.timestamp,
            yValueMapper: (Candle data, _) => data.spread,
            name: 'Gold',
            color: const Color.fromRGBO(8, 142, 255, 1),
          )
        ],
      ),
    );
  }
}