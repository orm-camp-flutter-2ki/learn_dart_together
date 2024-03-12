import 'point.dart';

class Rectangle {
  double _width;
  double _height;
  final Point _topLeft;
  final Point _bottomRight;

  Rectangle({required Point topLeft, required Point bottomRight})
      : _topLeft = topLeft,
        _bottomRight = bottomRight,
        _width = (topLeft.x - bottomRight.x).abs(), // 주어진 Point 로 width 계산
        _height = (topLeft.y - bottomRight.y).abs(); // 주어진 Point 로 height 계산

  // 면적을 계산
  double calcArea() {
    double area = _width * _height;

    print('사각형의 면적은 [$area] 입니다.');
    return area;
  }

  // 둘레를 계산
  double calcPerimeter() {
    double perimeter = (_width + _height) * 2;

    print('사격형의 둘레는 [$perimeter] 입니다.');
    return perimeter;
  }
}
