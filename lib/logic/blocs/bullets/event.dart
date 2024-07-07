import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class BulletsEvent with _$BulletsEvent {
  const factory BulletsEvent.init() = BulletsEventInit;

  const factory BulletsEvent.setAll(Iterable<Bullet> bullets) =
      BulletsEventSetAll;

  const factory BulletsEvent.add(Bullet bullet) = BulletsEventAdd;

  const factory BulletsEvent.removeAll(Iterable<Object> bombs) =
      BulletsEventRemoveAll;

  const factory BulletsEvent.update(double delta) = BulletsEventUpdate;
}
