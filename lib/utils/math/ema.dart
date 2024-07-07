/// exponentially weighted moving average — EWMA
/// EMA_t = alpha * p_t + (1 - alpha) * EMA_t-1
/// https://ru.wikipedia.org/wiki/%D0%A1%D0%BA%D0%BE%D0%BB%D1%8C%D0%B7%D1%8F%D1%89%D0%B0%D1%8F_%D1%81%D1%80%D0%B5%D0%B4%D0%BD%D1%8F%D1%8F#%D0%AD%D0%BA%D1%81%D0%BF%D0%BE%D0%BD%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE_%D0%B2%D0%B7%D0%B2%D0%B5%D1%88%D0%B5%D0%BD%D0%BD%D0%BE%D0%B5_%D1%81%D0%BA%D0%BE%D0%BB%D1%8C%D0%B7%D1%8F%D1%89%D0%B5%D0%B5_%D1%81%D1%80%D0%B5%D0%B4%D0%BD%D0%B5%D0%B5
class ExponentialMovingAverage {
  ExponentialMovingAverage({
    double initialEma = 0,
    this.alpha = 0,
    this.n = 0,
  })  : assert(
          (alpha == 0) != (n == 0),
          'Only one of alpha or n must be entered',
        ),
        _ema = initialEma;

  /// last EMA
  late double _ema;

  /// smoothing constant
  final double alpha;

  /// smoothing window size
  /// alpha = 2/(n+1)
  final int n;

  double get ema => _ema;

  double update(double val) {
    late final double value;
    if (alpha != 0) {
      value = alpha;
    } else if (n != 0) {
      value = 2 / (n + 1);
    }

    _ema = value * val + (1 - value) * _ema;

    return _ema;
  }
}
