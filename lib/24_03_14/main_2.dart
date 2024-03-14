import 'y.dart';
import 'a.dart';
import 'b.dart';

void main() {
  Y y1 = A();
  Y y2 = B();
  y1.a();
  y2.a();
}

/*
결과
Aa
Ba
출력
*/