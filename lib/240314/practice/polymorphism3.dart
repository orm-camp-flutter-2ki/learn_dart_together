import 'polymorphism2.dart';

void main() {
  A a1 = A();
  B b1 = B();

  // b() 메소드를 호출 해야 하므로 A, B가 상속한 Y 추상클래스의 타입으로 리스트 생성
  List<Y> lists = [];
  lists.add(a1);
  lists.add(b1);

  for(Y list1 in lists) {
    list1.b();
  }
}