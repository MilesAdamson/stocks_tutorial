// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocks_tutorial/models/candle.dart';

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
