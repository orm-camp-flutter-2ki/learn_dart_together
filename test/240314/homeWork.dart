import 'package:learn_dart_together/240314/a.dart';
import 'package:learn_dart_together/240314/b.dart';
import 'package:learn_dart_together/240314/y.dart';
import 'package:test/test.dart';

void main() {
  test('homeWorkTest', () {
    Y a = A();
    Y b = B();
    List<Y> yList = [a, b];

    for (Y y in yList) {
      y.b();
    }
  });
}
