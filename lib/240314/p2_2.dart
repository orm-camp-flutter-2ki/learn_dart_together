// 인터페이스 X 는 추상메소드 a을 정의
abstract interface class X {
  void a();
}

// 추상클래스 Y 는 X의 기능을 구현
abstract class Y implements X {
  void b();
}

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

// 클래스 B는 추상클래스 Y를 상속
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
  // Q2.
  Y y1 = A();
  // y1 인스턴스는 A 클래스로 생성되었지만 Y 클래스 타입을 가짐.
  // 추상클래스 Y는 인터페이스 X를 구현해야 하고
  // 인터페이스 X는 메소드 a만을 구현하고 있다.
  // 컴파일러는 인터페이스에 정의된 메소드만 사용하므로 a 메소드만 사용된다.

  Y y2 = B();
  // y2 인스턴스는 B 클래스로 생성되었지만 Y 클래스 타입을 가짐.
  // 추상클래스 Y는 인터페이스 X를 구현해야 하고
  // 인터페이스 X는 메소드 a만을 구현하고 있다.
  // 컴파일러는 인터페이스에 정의된 메소드만 사용하므로 a 메소드만 사용된다.

  y1.a(); // y1은 A 클래스로 생성된 인스턴스이고 a 메소드 사용 : Aa
  y2.a(); // y2는 B 클래스로 생성된 인스턴스이고 a 메소드 사용 : Ba
}
