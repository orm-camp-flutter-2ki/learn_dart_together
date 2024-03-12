import 'package:learn_dart_together/24_03_12/point.dart';

class Rectangle extends Point {
  double width;
  double height;

  Rectangle(
      {required super.x,
      required super.y,
      required this.width,
      required this.height});

  double figureOutArea() {
    return width * height;
  }

  double figureOutCircumference() {
    return (width + height) * 2;
  }
}
