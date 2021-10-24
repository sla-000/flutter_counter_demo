abstract class GameScoreRepo {
  Stream<bool> isStartedStream();
  bool get isStarted;
  void shoot();
  void kill();
}
