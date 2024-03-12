import 'package:learn_dart_together/24_03_12/point.dart';
import 'package:learn_dart_together/24_03_12/rectangle.dart';
import 'package:test/test.dart';

void main() {
  test('100 * 100 정사각형의 면적은 10000',() {
    Point position = Point(x: 0, y: 0);
    Rectangle rectangle = Rectangle(width: 100, height: 100, topLeft: position);

    expect(rectangle.figureOutArea(), 10000);
  });

  test('100 * 100 정사각형의 둘레는 400',() {
    Point position = Point(x: 0, y: 0);
    Rectangle rectangle = Rectangle(width: 100, height: 100, topLeft: position);

    expect(rectangle.figureOutCircumference(), 400);
  });
}