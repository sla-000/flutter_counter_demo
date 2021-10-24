abstract class SceneScoreRepo {
  Stream<bool> isStartedStream();
  bool get isStarted;
  void shoot();
  void kill();
}

abstract class SceneWavesRepo {
  void reset();
}

abstract class SceneSpawnRepo {
  void reset();
  Stream<void> bombSpawnStream();
}
