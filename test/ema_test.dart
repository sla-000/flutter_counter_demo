import 'package:flutter_counter_shooter/utils/math/ema.dart';
import 'package:test/test.dart';

void main() {
  late ExponentialMovingAverage ema;

  setUp(() {
    ema = ExponentialMovingAverage(n: 5);
  });

  group('EMA test, fail', () {
    test('EMA test, fail, 1', () {
      ema.update(1);
    });
  });

  group('EMA test, ok', () {
    test('EMA test, ok, 1', () {
      ema.update(1);
    });
  });
}
