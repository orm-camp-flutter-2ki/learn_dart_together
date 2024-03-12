import 'dart:math';

class RectangleExtendsPoint extends Point {

  int width;
  int height;

  RectangleExtendsPoint(double super.x, double super.y, this.width, this.height);

  // 면적
  int get calculateArea => width * height;
  // 둘레
  int get calculateRound => (width + height) * 2;
}

void main() {
  RectangleExtendsPoint rectangle = RectangleExtendsPoint(15, 10, 100, 33);

  print('면적은 ${rectangle.calculateArea}');
  print('둘레는 ${rectangle.calculateRound}');
}