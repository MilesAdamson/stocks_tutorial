import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stocks_tutorial/api/api.dart';
import 'package:stocks_tutorial/api/resolution.dart';
import 'package:stocks_tutorial/models/get_candles_request.dart';
import 'package:stocks_tutorial/state/app_state.dart';
import 'package:stocks_tutorial/state/symbol_state.dart';

class AppStateCubit extends Cubit<AppState> {
  final Api _api;

  AppStateCubit(this._api) : super(AppState.initial());

  void loadCandles(
    String symbol,
    DateTime from,
    DateTime to,
    Resolution resolution,
  ) async {
    final symbolStates = Map<String, SymbolState>.from(state.symbolStates);
    symbolStates[symbol] = SymbolState.loading();
    emit(state.copyWith(symbolStates: symbolStates));

    try {
      final request = GetCandlesRequest(resolution, to, from, symbol);
      final candles = await _api.getCandles(request);

      final symbolStates = Map<String, SymbolState>.from(state.symbolStates);
      symbolStates[symbol] = SymbolState.loaded(candles);
      emit(state.copyWith(symbolStates: symbolStates));
    } on ApiException catch (e, s) {
      debugPrint("$e\n$s");

      final symbolStates = Map<String, SymbolState>.from(state.symbolStates);
      symbolStates[symbol] = SymbolState.error();
      emit(state.copyWith(symbolStates: symbolStates));
    }
  }
}
