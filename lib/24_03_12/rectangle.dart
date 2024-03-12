import 'package:learn_dart_together/24_03_12/point.dart';

class Rectangle {
  double width;
  double height;
  Point topLeft;

  Rectangle({required this.width, required this.height, required this.topLeft});

  double figureOutArea() {
    return width * height;
  }

  double figureOutCircumference() {
    return (width + height) * 2;
  }
}
