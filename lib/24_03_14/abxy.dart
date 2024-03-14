import 'package:learn_dart_together/24_03_14/xy.dart';
import 'a.dart';
import 'b.dart';

void main() {
  X obj = A();
  Y y1 = A();
  Y y2 = B();

  List<Y> list = [];
  list.add(y1);
  list.add(y2);

  for(Y i in list) {
    i.b();
  }
  y1.a();
  y2.a();
  obj.a();
}
