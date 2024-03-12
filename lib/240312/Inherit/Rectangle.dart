import 'package:learn_dart_together/240312/Inherit/point.dart';

class Rectangle {
  Point bottomLeft;
  Point topRight;

  Rectangle(this.bottomLeft, this.topRight);

  int get area {
    return _height() * _width();
  }

  int get round {
    return (_height() + _width()) * 2;
  }

  int _height() {
    int height = bottomLeft.x - topRight.x;
    return height.abs();
  }

  int _width() {
    int width = bottomLeft.y - topRight.y;
    return width.abs();
  }
}
