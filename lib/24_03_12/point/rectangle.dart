import 'package:learn_dart_together/24_03_12/point/point.dart';

class Rectangle {
  int width, height;
  Point topLeft;

  Rectangle(
    this.width,
    this.height,
    this.topLeft
  );

  int calcArea(int width, int height) {
    return width * height;
  }

  int calcPerimeter(int width, int height) {
    return (width + height) * 2;
  }
}
