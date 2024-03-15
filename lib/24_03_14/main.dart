import 'a.dart';
import 'b.dart';
import 'x.dart';
import 'y.dart';

void main() {
  // [Q-1]
  X obj = A();
  obj.a();
  
  // [Q-2]
  Y y1 = A();
  Y y2 = B();
  y1.a();
  y2.a();

  // [Q-3]
  A a = A();
  B b = B();

  List<Y> list = [a, b];

  for (Y item in list) {
    item.b();
  }
}