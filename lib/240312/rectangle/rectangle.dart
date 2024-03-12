import 'dart:math';

class RectanglePoint {
  Point bottomLeft;
  Point topRight;

  RectanglePoint(this.bottomLeft, this.topRight);

  int area() {
    int width;
    int height;
    int area;
    width = topRight.x.toInt() - bottomLeft.x.toInt();
    height = topRight.y.toInt() - bottomLeft.y.toInt();
    area = width * height;
    print(area);
    return area;
  }

  int round() {
    int width;
    int height;
    int round;
    width = topRight.x.toInt() - bottomLeft.x.toInt();
    height = topRight.y.toInt() - bottomLeft.y.toInt();
    round = (width + height) * 2;
    print(round);
    return round;
  }
}
