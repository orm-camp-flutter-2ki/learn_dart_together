import 'package:learn_dart_together/240312/practice5/point.dart';
import 'package:learn_dart_together/240312/practice5/rectangle.dart';
import 'package:test/test.dart';

void main() {
  test('Rectangle Test', () {
    Rectangle rectangle = Rectangle(topLeft: Point(2, 3), bottomRight: Point(4, 9));
    print('직사각형의 넓이 : ${rectangle.getArea()}');
    print('직사각형의 둘레 : ${rectangle.getRound()}');
  });
}