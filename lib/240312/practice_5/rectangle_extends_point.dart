import 'dart:math';

class Rectangle extends Point {

  int width;
  int height;

  Rectangle(double super.x, double super.y, this.width, this.height);

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
  Rectangle rectangle = Rectangle(15, 10, 100, 33);

  // 계산
  int getArea = rectangle.calculateArea();
  int getRound = rectangle.calculateRound();

  print('면적은 $getArea');
  print('둘레는 $getRound');
}