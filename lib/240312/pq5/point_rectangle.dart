import 'dart:math';

// Point 클래스 정의
class Point {
  double x;
  double y;

  Point(this.x, this.y);
}

// Rectangle 클래스 정의
class Rectangle {
  double width;
  double height;
  Point topLeft;

  Rectangle(this.width, this.height, this.topLeft);

  // 면적 계산 메서드
  double area() {
    return width * height;
  }

  // 둘레 계산 메서드
  double perimeter() {
    return 2 * (width + height);
  }
}

void main() {
  // 사각형의 왼쪽 상단 꼭지점 생성
  Point topLeftPoint = Point(2, 3);

  // 사각형 생성
  Rectangle rectangle = Rectangle(5, 4, topLeftPoint);

  // 면적과 둘레 출력
  print('면적 : ${rectangle.area()}');
  print('둘레 : ${rectangle.perimeter()}');
}
