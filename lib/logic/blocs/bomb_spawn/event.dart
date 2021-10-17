import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class BombSpawnEvent with _$BombSpawnEvent {
  const factory BombSpawnEvent.init() = BombSpawnEventInit;

  const factory BombSpawnEvent.spawn(int time) = BombSpawnEventSpawn;
}
