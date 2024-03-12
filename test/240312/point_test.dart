import 'package:learn_dart_together/240312/point.dart';
import 'package:learn_dart_together/240312/rectangle.dart';
import 'package:test/test.dart';

void main() {
  test('포인트', () {
    Point point1 = Point(-1, 8);
    Point point2 = Point(9, -2);
    Point point3 = Point(12, 2);
    Point point4 = Point(2, 22);

    Rectangle rec1 = Rectangle(topLeft: point1, bottomRight: point2);
    Rectangle rec2 = Rectangle(topLeft: point3, bottomRight: point4);

    // expect(rec1.getExtent(), 100);
    // expect(rec1.getRound(), 40);
    expect(rec2.getExtent(), 200);
    expect(rec2.getRound(), 60);
  });
}
