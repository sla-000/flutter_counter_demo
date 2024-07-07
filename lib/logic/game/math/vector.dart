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

  void applyAdd(Vector v) {
    assert(!isNone);
    assert(!v.isNone);

    x += v.x;
    y += v.y;
  }

  Vector multiply(double k) {
    assert(!isNone);

    return Vector(
      x: x * k,
      y: y * k,
    );
  }

  void applyMultiply(double k) {
    assert(!isNone);

    x *= k;
    y *= k;
  }

  double getLength() {
    assert(!isNone);

    return sqrt(x * x + y * y);
  }

  double getAngle() {
    assert(!isNone);

    return atan2(x, -y);
  }

  Vector toLength(double length) {
    assert(!isNone);

    final coeff = length / getLength();

    return multiply(coeff);
  }

  double distance(Vector other) {
    assert(!isNone);
    assert(!other.isNone);

    return Vector(
      x: x - other.x,
      y: y - other.y,
    ).getLength();
  }

  @override
  String toString() => 'Vector{x: $x, y: $y}';
}
