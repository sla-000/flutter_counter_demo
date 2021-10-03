import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class GameScoreEvent with _$GameScoreEvent {
  const factory GameScoreEvent.add(int value) = GameScoreEventAdd;
}
