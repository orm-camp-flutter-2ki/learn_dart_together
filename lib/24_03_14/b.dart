import 'a.dart';
import 'y.dart';

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
}

void main() {
  Y y1 = A();
  Y y2 = B();
  List<Y> list = [];
  list.add(y1);
  list.add(y2);
  list[0].b();
  list[1].b();
}
