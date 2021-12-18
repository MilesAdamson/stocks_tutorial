import 'package:stocks_tutorial/models/candle.dart';

extension CandleHelper on List<Candle> {
  double get max => fold(-double.infinity, (a, b) => a > b.high ? a : b.high);

  double get min => fold(double.infinity, (a, b) => a < b.low ? a : b.low);
}
