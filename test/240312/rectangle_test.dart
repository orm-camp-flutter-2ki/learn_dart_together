import 'dart:math';

import 'package:learn_dart_together/240312/rectangle/rectangle.dart';
import 'package:test/test.dart';

void main() {
  test('Rectangle', () {
    Point bottomLeft = Point(1, 2);
    Point topRight = Point(5, 6);
    RectanglePoint rectangle = RectanglePoint(bottomLeft, topRight);

    expect(rectangle.area(), equals(16));
    expect(rectangle.round(), equals(16));
  });
}
