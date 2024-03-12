import 'package:learn_dart_together/24_03_12/point/point.dart';
import 'package:learn_dart_together/24_03_12/point/rectangle.dart';
import 'package:test/test.dart';

void main() {
  test('rectangle test', () {
    Point point = Point(1, 2);
    Rectangle rectangle = Rectangle(10, 20, point);

    expect(rectangle.calcArea(rectangle.width, rectangle.height), 200);
    expect(rectangle.calcPerimeter(rectangle.width, rectangle.height), 200);
  });
}
