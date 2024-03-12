import 'package:learn_dart_together/240312/practice5/point.dart';

class Rectangle {
  Point topLeft;
  Point bottomRight;

  Rectangle({
    required this.topLeft,
    required this.bottomRight
  });

  int get width => (topLeft.x - bottomRight.x).abs();
  int get height => (topLeft.y - bottomRight.y).abs();

  int getArea() {
    return width * height;
  }

  int getRound() {
    return (width + height) * 2;
  }
}