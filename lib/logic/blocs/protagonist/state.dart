import 'package:flutter_counter_shooter/logic/game/protagonist/protagonist.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class ProtagonistState with _$ProtagonistState {
  const factory ProtagonistState({
    required Protagonist protagonist,
  }) = _ProtagonistState;
}
