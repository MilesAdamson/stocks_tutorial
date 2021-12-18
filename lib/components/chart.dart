import 'package:flutter/material.dart';
import 'package:stocks_tutorial/models/candle.dart';

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
      body: Text("${widget.candles.length}"),
    );
  }
}
