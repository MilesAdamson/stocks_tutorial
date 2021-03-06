import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:stocks_tutorial/api/resolution.dart';
import 'package:stocks_tutorial/models/candle.dart';
import 'package:stocks_tutorial/models/get_candles_request.dart';
import 'package:stocks_tutorial/state/app_state.dart';
import 'package:stocks_tutorial/state/bloc.dart';
import 'package:stocks_tutorial/utils/candle_helper.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => ChartPageState();
}

class ChartPageState extends State<ChartPage> {
  bool get isPortrait =>
      MediaQuery.of(context).orientation == Orientation.portrait;

  String appBarTitle(GetCandlesRequest recentQuery) =>
      "${recentQuery.symbol.toUpperCase()} ${recentQuery.resolution.label.toLowerCase()} chart";

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppStateCubit, AppState>(builder: (context, state) {
      final recentQuery = state.recentQuery!;
      return Scaffold(
        appBar: isPortrait
            ? AppBar(
                title: Text(appBarTitle(recentQuery)),
              )
            : null,
        body: Builder(builder: (context) {
          if (state.isLoading) {
            final color = Theme.of(context).scaffoldBackgroundColor;
            return Center(
              child: SizedBox(
                height: 200,
                width: 200,
                child: LoadingIndicator(
                  indicatorType: Indicator.audioEqualizer,
                  backgroundColor: color,
                  pathBackgroundColor: color,
                  colors: const [
                    Colors.red,
                    Colors.green,
                  ],
                ),
              ),
            );
          }

          if (state.hasError) {
            return Center(
              child: Text(
                "Your search failed with the following message:"
                "\n${state.errorMessage}",
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16.0),
              ),
            );
          }

          final candles = state.candles;

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              primaryYAxis: NumericAxis(
                minimum: candles.minimumPlotValue,
                maximum: candles.maximumPlotValue,
                interval: candles.interval(isPortrait),
              ),
              series: <ChartSeries<Candle, String>>[
                candles.candleSeries(recentQuery.resolution),
              ],
            ),
          );
        }),
      );
    });
  }
}
