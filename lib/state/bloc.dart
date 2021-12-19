import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stocks_tutorial/api/api.dart';
import 'package:stocks_tutorial/api/resolution.dart';
import 'package:stocks_tutorial/models/candle.dart';
import 'package:stocks_tutorial/models/get_candles_request.dart';
import 'package:stocks_tutorial/state/app_state.dart';

class AppStateCubit extends Cubit<AppState> {
  final Api _api;

  AppStateCubit(this._api) : super(AppState.initial());

  Future<List<Candle>?> loadCandles(
    String symbol,
    DateTime from,
    DateTime to,
  ) async {
    emit(state.copyWith(isLoading: true, hasError: false));

    // Find the first resolution which results in less than 100 candles
    final resolution = Resolution.values.firstWhere(
      (r) {
        final ms = to.millisecondsSinceEpoch - from.millisecondsSinceEpoch;
        final resultingCandles = ms / r.duration.inMilliseconds;
        return resultingCandles < 100;
      },
      orElse: () => Resolution.month,
    );

    try {
      final request = GetCandlesRequest(resolution, to, from, symbol);
      emit(state.copyWith(recentQuery: request));

      final candles = await _api.getCandles(request);

      emit(state.copyWith(
        isLoading: false,
        candles: candles,
        currentSymbol: symbol,
        errorMessage:
            candles.isEmpty ? "No data could be found for your request" : null,
        hasError: candles.isEmpty,
      ));

      return candles;
    } on ApiException catch (e) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
        errorMessage: e.message,
      ));
    }
  }
}
