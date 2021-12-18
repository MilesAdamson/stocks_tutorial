// ignore_for_file: invalid_annotation_target

import 'package:candlesticks/candlesticks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  factory AppState(
    List<Candle> candles,
    String? currentSymbol,
    bool isLoading,
    bool hasError,
    String? errorMessage,
  ) = _AppState;

  factory AppState.initial() {
    return AppState([], null, false, false, null);
  }
}
