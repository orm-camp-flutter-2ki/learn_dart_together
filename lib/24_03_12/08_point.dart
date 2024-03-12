class Point {
  int x;
  int y;

  Point({required this.x, required this.y});
}

class Rectangle {
  // 사각형의 둘레
  void length(Point topLeft, Point botRight) {
    int width = botRight.x - topLeft.x;
    if (width < 0) {
      width *= -1;
    }

    int height = topLeft.y - botRight.y;
    if (height < 0) {
      height *= -1;
    }

    int length = 2 * (width + height);
    print('사각형의 둘레는 $length 입니다.');
  }

  // 사각형의 면적
  void area(Point topLeft, Point botRight) {
    int width = botRight.x - topLeft.x;
    if (width < 0) {
      width *= -1;
    }
    int height = topLeft.y - botRight.y;
    if (height < 0) {
      height *= -1;
    }
    int area = width * height;
    print('사각형의 넓이는 $area 입니다.');
  }
}
