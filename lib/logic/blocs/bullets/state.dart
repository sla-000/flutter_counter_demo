import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class BulletsState with _$BulletsState {
  const factory BulletsState({
    @Default(<Bullet>[]) List<Bullet> bullets,
  }) = _BulletsState;
}
