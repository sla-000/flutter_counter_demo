import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo.freezed.dart';

@freezed
class SpawnModel with _$SpawnModel {
  const factory SpawnModel({
    @Default(0) int count,
    @Default(0) int time,
  }) = _SpawnModel;
}

abstract class SpawnRepo {
  Stream<SpawnModel> get();
}
