import 'package:learn_dart_together/24_03_12/point.dart';

class Rectangle {
  int _width;
  int _height;
  Point _topLeft;

  Rectangle(this._width, this._height, this._topLeft);

  int get calculateArea => _width * _height;

  int get calculatePerimeter => 2 * (_width + _height);

  set width(int width) => _width = width;

  set height(int height) => _height = height;

  set topLeft(Point topLeft) => _topLeft = topLeft;
}
