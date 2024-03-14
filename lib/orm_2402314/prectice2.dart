import 'dart:ffi';

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

abstract interface class X {
  void a();
}

abstract class Y implements X {
  void b();
}

//문제 1. X obj = A(); 로 A인스턴스를 생성한 후, 변수 obj에서 호출할 수 있는
//메소드를 a, b, c 중에 골라보시오.
//
void main () {
  X obj = A();
  obj.a();
  // obj.b();
  // obj.c();

  Y y1 = A();
  Y y2 = B();
  y1.a();
  y2.b();
}