import 'a.dart';
import 'b.dart';
import 'x.dart';
import 'y.dart';

void main() {
  // [2]
  // [2-1]
  X obj = A();
  obj.a();


  // [2-2]
  Y y1 = A();
  Y y2 = B();
  y1.a();
  y2.a();


  // [3]
  A a = A();
  B b = B();

  List<Y> list = [a, b];

  for (Y item in list) {
    item.b();
  }
}

