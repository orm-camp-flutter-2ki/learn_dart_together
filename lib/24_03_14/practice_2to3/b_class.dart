import 'package:learn_dart_together/24_03_14/practice_2to3/y_abstract_class.dart';

import 'a_class.dart';

class B extends Y {
  @override
  void a() {
    print('Ba');
  }

  @override
  void b() {
    print('Bb');
  }

  void c() {
    print('Bc');
  }

  B();
}

void main() {
  Y y1 = A();
  Y y2 = B();

  y1.a();
  y2.a();
}
