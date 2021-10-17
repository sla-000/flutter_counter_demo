import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo.freezed.dart';

@freezed
class WavesModel with _$WavesModel {
  const factory WavesModel({
    @Default(0) int delta,
  }) = _WavesModel;
}

abstract class WavesRepo {
  Stream<WavesModel> get();
}
