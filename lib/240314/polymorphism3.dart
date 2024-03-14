import 'polymorphism2.dart';

void main() {
  A a1 = A();
  B b1 = B();

  List<Y> lists = [];
  lists.add(a1);
  lists.add(b1);

  for(Y list1 in lists) {
    list1.b();
  }
}