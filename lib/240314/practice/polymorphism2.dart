void main() {
  //2-1
  X obj = A();
  obj.a(); // X 인터페이스 에서 정의한 추상메소드 a() 만 사용가능


  //2-2
  Y y1 = A();
  Y y2 = B();

  y1.a();
  y2.a();
  /**
   * output
   * Aa
   * Ba
   */
}

abstract interface class X {
  void a();
}

abstract class Y implements X {
  void b();
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
    print('AC');
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