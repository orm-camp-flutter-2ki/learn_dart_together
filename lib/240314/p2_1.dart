// 클래스 A는 추상 클래스 Y를 상속
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

// 추상 클래스 Y는 인터페이스 X를 구현
abstract class Y implements X {
  void b(); // 추상 클래스 Y는 추상 메소드 b()를 가지고 있음.
}

// 클래스 A는 추상 Y 클래스를 상속 받고, 추상 클래스 Y는 인터페이스 X를 구현하므로
// 따라서, 클래스 A는 인터페이스 X를 구현해야 한다.
// 이때, 인터페이스 X는 추상 메소드 a만을 구현
abstract interface class X {
  void a();
}

void main() {
  // obj 인스턴스는 A 클래스의 인스턴스이지만, 타입이 인터페이스 X로 선언되어
  // 인터페이스 X는 메소드 a를 반드시 구현해야 한다
  // 컴파일러는 obj 인스턴스를 X 인터페이스의 기능으로 제한하고
  // 인터페이스에 정의된 a 메소드만 사용된다.
  X obj = A();
  obj.a();
  // 즉, b,c 메소드는 X 인터페이스에 정의되지 않은 메소드이므로 컴파일러가 이를 허용하지 않는다.
  // obj.b(); // 컴파일 에러
  // obj.c(); //컴파일 에러
}