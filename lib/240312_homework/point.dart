void main() {
  Rectangle rec = Rectangle(3, 2, 5, 6);
  print('면적 : ${rec.areaCalculate()}');
  print(rec.roundCalculate());
}

class Point {
  int x;
  int y;

  Point(this.x, this.y);
}

class Rectangle extends Point {
  int width;
  int height;

  Rectangle(super.x, super.y, this.width, this.height);

  int areaCalculate() {
    int area = width * height;
    return area;
  }

  int roundCalculate() {
    int round = (width + height) * 2;
    return round;
  }
}
