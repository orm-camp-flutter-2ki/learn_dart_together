import 'package:learn_dart_together/240314/y.dart';

import 'a.dart';
import 'b.dart';

void main() {
  Y a = A();
  Y b = B();
  List<Y> yList = [a, b];

  for (Y y in yList) {
    y.b();
  }
}
