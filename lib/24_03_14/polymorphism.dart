abstract interface class X {
  void a();
}

abstract class Y implements X {
  // X의 메소드를 오버라이드 하지 않아도 되는 이유는 같은 추상 클래스 이기 떄문
  void b();
}

class A extends Y {
  @override
  void a() {}

  @override
  void b() {}

  void c() {
    print('ac');
  }
}

class B extends Y {
  @override
  void a() {}

  @override
  void b() {}

  void c() {
    print('bc');
  }
}
