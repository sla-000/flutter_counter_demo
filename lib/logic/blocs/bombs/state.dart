import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class BombsState with _$BombsState {
  const factory BombsState({
    @Default(<Bomb>[]) List<Bomb> bombs,
  }) = _BombsState;
}
