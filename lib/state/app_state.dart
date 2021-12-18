// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocks_tutorial/state/symbol_state.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  factory AppState(
    Map<String, SymbolState> symbolStates,
  ) = _AppState;

  factory AppState.initial() {
    return AppState({});
  }
}
