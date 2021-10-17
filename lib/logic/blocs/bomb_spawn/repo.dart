import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo.freezed.dart';

@freezed
class BombSpawnModel with _$BombSpawnModel {
  const factory BombSpawnModel({
    @Default(0) int count,
    @Default(0) int time,
  }) = _BombSpawnModel;
}

abstract class BombSpawnRepo {
  Stream<BombSpawnModel> get();
}
