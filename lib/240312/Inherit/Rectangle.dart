import 'package:learn_dart_together/240312/Inherit/point.dart';

class Rectangle {
  Point bottomLeft;

  Rectangle(this.bottomLeft);

  int get area {
    return bottomLeft.x * bottomLeft.y;
  }

  int get round {
    return (bottomLeft.x + bottomLeft.y) * 2;
  }
}
