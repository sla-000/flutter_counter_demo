import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';
import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';
import 'package:flutter_counter_shooter/logic/game/protagonist/protagonist.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class SceneState with _$SceneState {
  const factory SceneState({
    required Vector size,
    required Protagonist protagonist,
    required List<Bullet> bullets,
    required List<Bomb> bombs,
  }) = _SceneState;
}
