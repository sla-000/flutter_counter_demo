import 'package:flutter_counter_shooter/logic/game/math/vector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class SceneEvent with _$SceneEvent {
  const factory SceneEvent.init(Vector size) = SceneEventInit;

  const factory SceneEvent.resize(Vector size) = SceneEventResize;

  const factory SceneEvent.tapButton() = SceneEventTapButton;

  const factory SceneEvent.update(double delta) = SceneEventUpdate;
}
