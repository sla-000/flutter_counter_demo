import 'package:flutter_counter_shooter/logic/game/math/vector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class SceneState with _$SceneState {
  const factory SceneState({
    required Vector size,
  }) = _SceneState;
}
