import 'dart:math';

import 'package:learn_dart_together/24_03_12/08_point.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('사각형 넓이, 둘레 구하기', () {
    Rectangle rec =
        Rectangle(topLeft: Point(x: 5, y: -5), bottomRight: Point(x: 10, y: 4));

    rec.getArea();
    rec.getRound();

    expect(rec.getRound(), 0);
    expect(rec.getArea(), 0);
  });
}
