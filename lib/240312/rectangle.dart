import 'dart:math';

import 'point.dart';

class Rectangle {
  final double _width;
  final double _height;
  final Point _topLeft;
  final Point _bottomRight;

  Rectangle({required Point topLeft, required Point bottomRight})
      : _topLeft = topLeft,
        _bottomRight = bottomRight,
        _height = (topLeft.y - bottomRight.y).abs(),
        _width = (topLeft.x - bottomRight.x).abs();

  // 받은 매개변수로 변수를 초기화하는 방법

  double getExtent() {
    double result = _height * _width;
    return result;
  }

  double getRound() {
    double result = 2 * (_height + _width);
    return result;
  }
}
