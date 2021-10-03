import 'dart:math';

const double kCircleDegrees = 360;
const double kCircleRadians = 2 * pi;

double deg2Rad(double val) => val / kCircleDegrees * kCircleRadians;

double rad2deg(double val) => val / kCircleRadians * kCircleDegrees;
