class Point {
  int x;
  int y;

  Point({required this.x, required this.y});
}

class Rectangle {
  Point topLeft;
  Point bottomRight;

  Rectangle({required this.topLeft, required this.bottomRight});

  // get property를 읽기 전용 필드처럼 생각하고 사용가능!
  int get width => (topLeft.x - bottomRight.x).abs(); // .abs() -> 절대값
  int get height => (topLeft.y - bottomRight.y).abs();

  // 사각형의 둘레
  int getRound() {
    return (width + height) * 2;
  }

  // 사각형의 넓이
  int getArea() {
    return width * height;
  }

// // 사각형의 둘레
// void length(Point topLeft, Point botRight) {
//   int width = botRight.x - topLeft.x;
//   if (width < 0) {
//     width *= -1;
//   }
//
//   int height = topLeft.y - botRight.y;
//   if (height < 0) {
//     height *= -1;
//   }
//
//   int length = 2 * (width + height);
//   print('사각형의 둘레는 $length 입니다.');
// }
//
// // 사각형의 면적
// void area(Point topLeft, Point botRight) {
//   int width = botRight.x - topLeft.x;
//   if (width < 0) {
//     width *= -1;
//   }
//   int height = topLeft.y - botRight.y;
//   if (height < 0) {
//     height *= -1;
//   }
//   int area = width * height;
//   print('사각형의 넓이는 $area 입니다.');
// }
}
