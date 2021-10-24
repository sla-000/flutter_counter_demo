import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class SpawnEvent with _$SpawnEvent {
  const factory SpawnEvent.init() = SpawnEventInit;

  const factory SpawnEvent.spawn(int time) = SpawnEventSpawn;
}
