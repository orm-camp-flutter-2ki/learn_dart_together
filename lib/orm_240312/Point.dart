class Point {
  final double x;
  final double y;

  Point(this.x, this.y);

  @override
  String toString() => 'Point($x, $y)';
}

class Rectangle {
  final Point topLeft;
  final double width;
  final double height;

  Rectangle(this.topLeft, this.width, this.height);

  double get area => width * height;

  double get perimeter => 2 * (width + height);

  @override
  String toString() =>
      'Rectangle(topLeft: $topLeft, width: $width, height: $height)';
}

void main() {
  Point point = Point(0, 0);
  Rectangle rectangle = Rectangle(point, 50, 30);

  print(point);
  print(rectangle);

  print('면적: ${rectangle.area}'); // 면적: 1500
  print('둘레: ${rectangle.perimeter}'); // 둘레: 160
}
