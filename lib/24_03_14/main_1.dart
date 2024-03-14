import 'x.dart';
import 'a.dart';

void main() {
  X obj = A();
  obj.a();
  /*
  X인터페이스에 a() <- 만 구현되어 있어서 b() & c()는 오류
  */
}
