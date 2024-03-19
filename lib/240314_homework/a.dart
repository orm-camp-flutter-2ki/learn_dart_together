import 'y.dart';
import 'x.dart';
import 'b.dart';

void main() {
  // 1. X obj = A(); 로 A인스턴스를 생성한 후,
  // 변수 obj에서 호출할 수 있는 메소드를 a(), b(), c() 중에 골라보시오
  //예상 답 : 셋다 호출 가능
  //실제 답 : obj.a()만 호출 가능. type을 A로 바꾸면 호출 가능.
  X obj = A();
  obj.a();
  obj as A;
  obj.b();
  obj.c();

  // Y y1 = A(); Y y2 = B(); 로 A와 B의 인스턴스를 생성한 후
  // y1.a(); y2.a(); 를 실행했을 때에 화면에 표시되는 내용을 말하시오.
  //예상 답 : 'Aa','Ba'
  //실제 답 : 'Aa','Ba'
  Y y1 = A();
  Y y2 = B();
  y1.a();
  y2.a();

  // List 변수의 타입으로 무엇을 사용하여야 하는가 Y,dynamic
  // 위에서 설명하고 있는 프로그램을 작성하시오
  A a = A();
  B b = B();
  List<X> xlist = [a, b];
  List<Y> ylist = [a, b];
  //xlist[0].b(); //타입오류
  ylist[0].b();
  //xlist[1].b(); //타입오류
  ylist[1].b();
}

class A extends Y {
  @override
  void a() {
    print('Aa');
  }

  @override
  void b() {
    print('Ab');
  }

  void c() {
    print('Ac');
  }
}
