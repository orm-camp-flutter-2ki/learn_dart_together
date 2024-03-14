import 'dart:math';

class Point {
  double x;
  double y;

  Point({required this.x, required this.y});

  double distanceTo(Point other) {
    return sqrt(pow(other.x - x, 2) + pow(other.y - y, 2));
  }
}

void main() {
  // 두 점 생성
  Point pointA = Point(x: 3, y: 4);
  Point pointB = Point(x: 6, y: 8);

  // 두 점 사이의 거리 계산
  double distance = pointA.distanceTo(pointB);
  print("두 점 사이의 거리: $distance");
}
//점과 사각형
//Point 클래스를 만들고 x 및 y 좌표와 같은 속성을 포함합니다.
//Rectangle 클래스를 만들고 width, height, top-left 포인터와 같은 속성을 포함합니다.
//Rectangle 클래스의 면적 및 둘레를 계산하는 메서드를 추가합니다.
