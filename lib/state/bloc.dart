import 'package:candlesticks/candlesticks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stocks_tutorial/api/api.dart';
import 'package:stocks_tutorial/api/resolution.dart';
import 'package:stocks_tutorial/models/get_candles_request.dart';
import 'package:stocks_tutorial/state/app_state.dart';

class AppStateCubit extends Cubit<AppState> {
  final Api _api;

  AppStateCubit(this._api) : super(AppState.initial());

  Future<List<Candle>?> loadCandles(
    String symbol,
    DateTime from,
    DateTime to,
    Resolution resolution,
  ) async {
    emit(state.copyWith(isLoading: true, hasError: false));

    try {
      final request = GetCandlesRequest(resolution, to, from, symbol);
      final candles = await _api.getCandles(request);

      emit(state.copyWith(
        isLoading: false,
        candles: candles,
        currentSymbol: symbol,
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
