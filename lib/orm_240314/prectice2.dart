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

//문제 2-1. X obj = A(); 로 A인스턴스를 생성한 후, 변수 obj에서 호출할 수 있는
//메소드를 a, b, c 중에 골라보시오.
//
// void main () {
// X obj = A();
// obj.a();
// // obj.b();
// obj.c();
//
// Y y1 = A();
// Y y2 = B();
// y1.a();
// y2.b();
// }
// 문제 3
void main() {
  // List<Y> 타입의 변수 선언 및 인스턴스 추가
  List<Y> list = [A(), B()];
// 리스트의 변수 타입은 추상 클래스인 Y를 이용하여 list를 만들어야 한다.
// 사용하는 메소드들이 전부 Y에서 나온 것들의 기능을 확장하기 때문에
  // List의 요소를 차례대로 꺼내 b() 메소드 호출
  for (Y item in list) {
    item.b();
  }
}
// 위 프로그램은 인터페이스와 추상클래스를 활용하는 프로그램이다. A 와 B 클래스를 Y클래스에게 상속받아
//새로운 a()를 메소드를 재정의하여 구현한다.
