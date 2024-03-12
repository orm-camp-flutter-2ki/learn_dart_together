import 'package:learn_dart_together/24_03_12/ex3.dot%20and%20rectangle/point.dart';

class Rectangle extends Point {

  final Point topLeft;
  final Point bottomRight;

  Rectangle({required super.x, required super.y, required this.topLeft, required this.bottomRight});

  double get width {
    return bottomRight.x - (topLeft.x);
  }

  double get height {
    return topLeft.y - (bottomRight.y);
  }

  double getArea() {
    double result = width * height;
    return result;
  }

  double getRound() {
    double result = 2 * (width + height);
    return result;
  }
}


