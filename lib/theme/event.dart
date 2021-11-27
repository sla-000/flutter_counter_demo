import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.gameOn(BuildContext context) = ThemeEventGameOn;
  const factory ThemeEvent.gameOff(BuildContext context) = ThemeEventGameOff;
}
