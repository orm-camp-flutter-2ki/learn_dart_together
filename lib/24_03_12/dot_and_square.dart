// 점과 사각형
// Point 클래스를 만들고 x 및 y 좌표와 같은 속성을 포함합니다.
// Rectangle 클래스를 만들고 width, height, top-left 포인터와 같은 속성을 포함합니다.
// Rectangle 클래스의 면적 및 둘레를 계산하는 메서드를 추가합니다.

class Point {
  double x;
  double y;

  Point({
    required this.x,
    required this.y,
  });
}

class Rectangle {
  double width;
  double height;
  Point topLeft;
  Point topRight;
  Point bottomLeft;

  Rectangle({
    double? width,
    double? height,
    required this.topLeft,
    required this.topRight,
    required this.bottomLeft,
  })  : width = width ?? (topRight.x - topLeft.x).abs(),
        height = height ?? (bottomLeft.y - topLeft.y).abs();

  // 면적 계산
  double calculateArea() {
    double area = width * height;
    print('사각형의 면적: $area');
    return area;
  }

  // 둘레 계산
  double calculatePerimeter() {
    double perimeter = 2 * (width + height);
    print('사각형의 둘레: $perimeter');
    return perimeter;
  }
}

void main() {
// Point 및 Rectangle 객체 생성
  Point topLeft = Point(x: 2, y: 2);
  Point topRight = Point(x: 5, y: 2);
  Point bottomLeft = Point(x: 10, y: 10);

  Rectangle rect =
      Rectangle(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft);

  rect.calculateArea();
  rect.calculatePerimeter();
}
