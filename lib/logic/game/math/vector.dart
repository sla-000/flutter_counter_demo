import 'dart:math';

class Vector {
  Vector({
    required this.x,
    required this.y,
  });

  Vector.fromAngle({
    required double angle,
    required double length,
  }) : this(
          x: length * sin(angle),
          y: length * -cos(angle),
        );

  Vector.copy(Vector other) : this(x: other.x, y: other.y);

  Vector.zero() : this(x: 0, y: 0);
  Vector.one() : this(x: 1, y: 1);
  Vector.empty() : this(x: kEmpty, y: kEmpty);
  Vector.square({required double size}) : this(x: size, y: size);

  static const double kEmpty = double.negativeInfinity;

  double x;
  double y;

  bool get isNone => x == kEmpty || y == kEmpty;

  Vector add(Vector v) {
    assert(!isNone);
    assert(!v.isNone);

    return Vector(
      x: x + v.x,
      y: y + v.y,
    );
  }

  Vector applyAdd(Vector v) {
    assert(!isNone);
    assert(!v.isNone);

    x += v.x;
    y += v.y;

    return this;
  }

  Vector multiply(double k) {
    assert(!isNone);

    return Vector(
      x: x * k,
      y: y * k,
    );
  }

  Vector applyMultiply(double k) {
    assert(!isNone);

    x *= k;
    y *= k;

    return this;
  }

  double getLength() {
    assert(!isNone);

    return sqrt(x * x + y * y);
  }

  Vector toLength(double length) {
    assert(!isNone);

    final double koeff = length / getLength();

    return multiply(koeff);
  }

  @override
  String toString() {
    return 'Vector{x: $x, y: $y}';
  }
}
