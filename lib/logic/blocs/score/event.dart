import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class ScoreEvent with _$ScoreEvent {
  const factory ScoreEvent.shoot() = ScoreEventShoot;
  const factory ScoreEvent.kill() = ScoreEventKill;
  const factory ScoreEvent.dead() = ScoreEventDead;
  const factory ScoreEvent.restart() = ScoreEventRestart;
}
