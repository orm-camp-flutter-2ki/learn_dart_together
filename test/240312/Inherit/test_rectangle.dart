import 'package:learn_dart_together/240312/Inherit/Rectangle.dart';
import 'package:learn_dart_together/240312/Inherit/point.dart';
import 'package:test/test.dart';

void main() {
  test('rectTest', () {
    Point point = Point(20,10);
    Rectangle rectangle = Rectangle(point);

    expect( rectangle.area, equals(200));

    expect( rectangle.round, equals(60));

  });
}