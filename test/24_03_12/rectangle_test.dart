import 'package:learn_dart_together/24_03_12/point.dart';
import 'package:learn_dart_together/24_03_12/rectangle.dart';
import 'package:test/test.dart';

void main() {
  test('Rectangle은 Point를 상속했다',() {
    Rectangle rectangle = Rectangle(x: 0, y: 0, width: 100, height: 100);

    expect(rectangle is Point, true);
  });

  test('100 * 100 정사각형의 면적은 10000',() {
    Rectangle rectangle = Rectangle(x: 0, y: 0, width: 100, height: 100);

    expect(rectangle.figureOutArea(), 10000);
  });

  test('100 * 100 정사각형의 둘레는 400',() {
    Rectangle rectangle = Rectangle(x: 0, y: 0, width: 100, height: 100);

    expect(rectangle.figureOutCircumference(), 400);
  });
}