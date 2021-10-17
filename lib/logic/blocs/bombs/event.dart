import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class BombsEvent with _$BombsEvent {
  const factory BombsEvent.init() = BombsEventInit;

  const factory BombsEvent.add(Bomb bomb) = BombsEventAdd;
  const factory BombsEvent.remove(Bomb bomb) = BombsEventRemove;

  const factory BombsEvent.setAll(List<Bomb> bombs) = BombsEventSetAll;

  const factory BombsEvent.update(double delta) = BombsEventUpdate;
}
