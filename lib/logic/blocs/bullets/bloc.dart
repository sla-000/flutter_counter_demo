import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';

class BulletsBloc {
  BulletsBloc() {
    init();
  }

  final List<Bullet> _bullets = <Bullet>[];

  List<Bullet> get bullets => _bullets;

  void init() {
    _bullets.clear();
  }

  void setAll(Iterable<Bullet> bullets) {
    _bullets.clear();
    _bullets.addAll(bullets);
  }

  void add(Bullet bullet) => _bullets.add(bullet);

  void removeAll(List<Object> bullets) => bullets.forEach(_bullets.remove);

  void update(double delta) {
    for (final Bullet bullet in _bullets) {
      bullet.update(delta);
    }
  }
}
