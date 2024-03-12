import 'dart:typed_data';

class Point {
  double x;
  double y;

  Point(this.x, this.y);
}

class Rectangle extends Point {
  double width;
  double height;
  double topLeft;

  Rectangle(super.x, super.y, this.width, this.height, this.topLeft);

  double calculatorArea() {

    double area = width * height;

    return area;

  }

  double calculatorPerimeter() {

    double perimeter = 2 * (width + height);

    return perimeter;
  }
}

void main() {
  Rectangle rectangle = Rectangle(10, 10, 20, 20, 20);
  print(rectangle.calculatorPerimeter());
  print(rectangle.calculatorArea());

}
