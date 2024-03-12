import 'package:learn_dart_together/240312/Inherit/Rectangle.dart';
import 'package:learn_dart_together/240312/Inherit/point.dart';
import 'package:test/test.dart';

void main() {
  test('rectTest', () {
    Point point1 = Point(10, 10);
    Point point2 = Point(20, 20);
    Rectangle rectangle = Rectangle(point1, point2);

    expect(rectangle.area, equals(100));

    expect(rectangle.round, equals(40));
  });
}
