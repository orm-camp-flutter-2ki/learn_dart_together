main() {
  //2-1
  // X obj = A();
  // obj.c();


  //2-2
  Y y1 = A();
  Y y2 = B();

  y1.a();
  y2.a();
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
