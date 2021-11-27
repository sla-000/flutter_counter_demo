import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
    ThemeData? theme,
  }) = _ThemeState;
}
