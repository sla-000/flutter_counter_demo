import 'dart:async';

import 'package:audioplayers/audioplayers.dart';

class SoundService {
  final AudioPlayer _player = AudioPlayer();

  Future<void> load() async {
    await Future.wait([
      _player.setSource(AssetSource('sounds/explosion.mp3')),
      _player.setSource(AssetSource('sounds/dead.mp3')),
      _player.setSource(AssetSource('sounds/shoot.mp3')),
    ]);
  }

  void playExplosion() {
    unawaited(
      _player.play(
        AssetSource('sounds/explosion.mp3'),
        mode: PlayerMode.lowLatency,
      ),
    );
  }

  void playDead() {
    unawaited(
      _player.play(AssetSource('sounds/dead.mp3'), mode: PlayerMode.lowLatency),
    );
  }

  void playShoot() {
    unawaited(
      _player.play(
        AssetSource('sounds/shoot.mp3'),
        mode: PlayerMode.lowLatency,
      ),
    );
  }
}
