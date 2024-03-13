class Point {
  int x;
  int y;
  Point({required this.x, required this.y});



}

class Rectangle {
  int width;
  int height;
  Point topLeft;

  Rectangle({required this.width, required this.height, required this.topLeft });
  int get area => width * height;
  int get perimeter => (width + height) * 2;



}