import 'point.dart';

class Rectangle {
  double width;
  double height;
  Point topLeft;

  Rectangle(
    this.width,
    this.height,
    this.topLeft,
  );

  double area() {
    return width * height;
  }

  double round() {
    return 2 * (width + height);
  }
}
