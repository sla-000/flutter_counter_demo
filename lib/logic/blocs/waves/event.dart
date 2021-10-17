import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class WavesEvent with _$WavesEvent {
  const factory WavesEvent.init() = WavesEventInit;

  const factory WavesEvent.nextWave() = WavesEventNextWave;

  const factory WavesEvent.update(int delta) = WavesEventUpdate;
}
