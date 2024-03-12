import 'dart:math';

class Rectangle {

  int width;
  int height;
  Point topLeft;

  Rectangle(this.width, this.height, this.topLeft);

  // 면적
  int calculateArea() {
    return width * height;
  }

  // 둘레
  int calculateRound() {
    return (width + height) * 2;
  }
}

void main() {
  Point point = Point(10, 15);
  Rectangle rectangle = Rectangle(100, 33, point);

  // 계산
  int getArea = rectangle.calculateArea();
  int getRound = rectangle.calculateRound();

  print('면적은 $getArea');
  print('둘레는 $getRound');
}