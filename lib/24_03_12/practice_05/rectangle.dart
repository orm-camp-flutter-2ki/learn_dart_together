import 'package:learn_dart_together/24_03_12/practice_05/point.dart';

class Rectangle {
  int width;
  int height;
  Point topLeft;
  Point topRight;
  Point bottomLeft;
  Point bottomRight;

  Rectangle({
    required this.width,
    required this.height,
    required this.topLeft,
    required this.topRight,
    required this.bottomLeft,
    required this.bottomRight,
  });

  int calculateArea(int width, int height) {
    return width*height;
  }

  int calculateRount(int width, int height) {
    return ((width + height) * 2);
  }
}
