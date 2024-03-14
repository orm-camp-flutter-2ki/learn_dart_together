import 'a.dart';
import 'b.dart';
import 'x.dart';
import 'y.dart';

void main() {
  X obj = A();

  obj.a();    // Aa
  // 에러
  // obj.b();
  // obj.c();

  Y y1 = A();   // Aa
  Y y2 = B();   // Ba

  y1.a();
  y2.a();

  List<Y> lists = [];

  lists.add(A());
  lists.add(B());

  // lists 에서 Y 타입의 value 를 뺑뺑이
  for (Y list in lists) {
    list.b();
  }
}