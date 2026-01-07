import 'dart:async';

import 'package:audioplayers/audioplayers.dart';

class SoundService {
  final AudioPlayer _player = AudioPlayer();

  final _explosion = AssetSource('sounds/explosion.mp3');
  final _dead = AssetSource('sounds/dead.mp3');
  final _shoot = AssetSource('sounds/shoot.mp3');

  Future<void> load() async {
    await Future.wait([
      _player.setSource(_explosion),
      _player.setSource(_dead),
      _player.setSource(_shoot),
    ]);
  }

  void playExplosion() {
    unawaited(
      _player.play(
        _explosion,
        mode: PlayerMode.lowLatency,
      ),
    );
  }

  void playDead() {
    unawaited(
      _player.play(
        _dead,
        mode: PlayerMode.lowLatency,
      ),
    );
  }

  void playShoot() {
    unawaited(
      _player.play(
        _shoot,
        mode: PlayerMode.lowLatency,
      ),
    );
  }
}
