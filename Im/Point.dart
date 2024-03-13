import 'dart:collection';
import 'dart:html';

class Point {
  List<double> x = [];
  List<double> y = [];

  Point({required this.x, required this.y});

  void calculate() {
    double widthResult = x[0] - x[1];
    // print('Calculation result: $widthResult');
  }
}

void main() {
  Point pointA = Point(x: [0.0], y: [5.0]);
  pointA.x = [5.0];
  pointA.y = [8.5];

  Point pointB = Point(x: [0.0], y: [0.0]);
  pointB.x = [3.0];
  pointB.y = [5.3];

}
// void main (a, b) {
//   Map<String, dynamic> xLength = {};
//   Point point = Point(x: a, y: b);
//   xLength.addAll({
//     'x': 5,
//     'y': 12,
//   });
// }

//점과 사각형
//Point 클래스를 만들고 x 및 y 좌표와 같은 속성을 포함합니다.
//Rectangle 클래스를 만들고 width, height, top-left 포인터와 같은 속성을 포함합니다.
//Rectangle 클래스의 면적 및 둘레를 계산하는 메서드를 추가합니다.
