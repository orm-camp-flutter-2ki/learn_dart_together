class Point {
  double x;
  double y;

  point(this.x, this.y);
}

class Rectangle extends Point {
  double width;
  double height;
  double topLeft;

  Rectangle({required this.width, required this.height, required this.topLeft});

  double area() {
    return width * height;
  }

  double perimeter() {
    return 2 * (width + height);
  }
