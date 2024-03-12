import 'point.dart';

class Rectangle {
  Point topLeftPoint;
  Point bottomRightPoint;

  Rectangle(this.topLeftPoint, this.bottomRightPoint);

  int get width => (topLeftPoint.x - bottomRightPoint.x).abs();
  int get height => (topLeftPoint.y - bottomRightPoint.y).abs();

  int getArea() {
    return width * height;
  }

  int getPerimeter() {
    return (width + height) * 2;
  }
}