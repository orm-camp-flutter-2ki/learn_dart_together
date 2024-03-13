import 'dart:math';

class RectanglePoint {
  Point bottomLeft;
  Point topRight;

  RectanglePoint(this.bottomLeft, this.topRight);

  int area() {
    int width = topRight.x.toInt() - bottomLeft.x.toInt();
    int height = topRight.y.toInt() - bottomLeft.y.toInt();
    int area = width * height;
    print(area);
    return area;
  }

  int round() {
    int width = topRight.x.toInt() - bottomLeft.x.toInt();
    int height = topRight.y.toInt() - bottomLeft.y.toInt();
    int round = (width + height) * 2;
    print(round);
    return round;
  }
}
