import 'package:flutter_counter_shooter/logic/game/math/vector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class ProtagonistEvent with _$ProtagonistEvent {
  const factory ProtagonistEvent.init(Vector center) = ProtagonistEventInit;

  const factory ProtagonistEvent.shoot() = ProtagonistEventShoot;

  const factory ProtagonistEvent.update(double delta) = ProtagonistEventUpdate;
}
