// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocks_tutorial/models/candle.dart';

part 'symbol_state.freezed.dart';

@freezed
class SymbolState with _$SymbolState {
  factory SymbolState(
    List<Candle> candles,
    bool isLoading,
    bool failedToLoad,
  ) = _SymbolState;

  factory SymbolState.initial() {
    return SymbolState(
      [],
      false,
      false,
    );
  }

  factory SymbolState.loading() {
    return SymbolState(
      [],
      true,
      false,
    );
  }

  factory SymbolState.loaded(List<Candle> candles) {
    return SymbolState(
      candles,
      false,
      false,
    );
  }

  factory SymbolState.error() {
    return SymbolState(
      [],
      false,
      true,
    );
  }
}
