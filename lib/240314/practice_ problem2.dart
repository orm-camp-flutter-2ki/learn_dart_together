abstract interface class X {
  void a();
}

abstract class Y implements X {
  void b();
}

class A extends Y {
  @override
  void a() {
    print('Y 상속받은 A클래스의 a');
  }

  @override
  void b() {
    print('Y상속받은 A클래스의 b');
  }

  void c() {
    print('Y상속받은 A클래스의 c');
  }
}

class B extends Y {
  @override
  void a() {
    print('Y 상속받은 B클래스의 a');
  }

  @override
  void b() {
    print('Y 상속받은 B클래스의 b');
  }

  void c() {
    print('Y 상속받은 B클래스의 c');
  }
}

void main() {
  // 1번문제
  // X obj = A();
  // obj.a();
  //2번 문제
  // Y y1 = A();
  // Y y2 = B();
  // y1.a();
  // y2.a();
  //3번문제
  List<Y> myList = [];
  Y y1 = A();
  Y y2 = B();
  myList.add(y1);
  myList.add(y2);
  for (var item in myList) {
    item.b();
  }
}
