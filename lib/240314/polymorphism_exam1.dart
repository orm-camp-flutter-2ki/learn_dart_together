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

//인스턴스 생성
void main(){
  X obj = A();
  obj.a();

  Y y1 = A();
  y1.a();

  Y y2 = B();
  y2.a();
}