import 'dart:async';

import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';

import 'repo.dart';

class BombsBloc {
  BombsBloc({
    required BombsClearRepo bombsClearRepo,
  }) {
    _bombsClearSubscription = bombsClearRepo.get().listen((_) => init());
  }

  late final StreamSubscription<void> _bombsClearSubscription;

  final List<Bomb> _bombs = <Bomb>[];

  void close() => _bombsClearSubscription.cancel();

  List<Bomb> get bombs => _bombs;

  void init() => _bombs.clear();

  void setAll(Iterable<Bomb> bombs) {
    _bombs.clear();
    _bombs.addAll(bombs);
  }

  void add(Bomb bomb) => _bombs.add(bomb);

  void remove(Object bomb) => _bombs.remove(bomb);

  void update(double delta) {
    for (final Bomb bomb in _bombs) {
      bomb.update(delta);
    }
  }
}
