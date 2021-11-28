// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_counter_shooter/utils/math/ema.dart';
import 'package:flutter_test/flutter_test.dart';

/// todo ExponentialMovingAverage tests
void main() {
  late ExponentialMovingAverage ema;

  setUp(() {
    ema = ExponentialMovingAverage(n: 10);
  });

  group('EMA test, fail', () {
    test('EMA test, fail, 1', () {});
  });

  group('EMA test, ok', () {
    test('EMA test, ok, 1', () {});
  });
}
