import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class BombSpawnState with _$BombSpawnState {
  const factory BombSpawnState({
    @Default(0) int lastSpawn,
  }) = _BombSpawnState;
}
