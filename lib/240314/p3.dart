abstract class X {
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

// 1. List Type으로는 Y를 써야 한다. (A클래스와 B클래스 공통적으로 추상클래스 Y를 상속받고 있으므로)
// 2. 프로그램 작성
void main() {
  List<Y> instances = [A(), B()];

  for (Y instance in instances) {
    instance.b(); // 각 인스턴스의 b() 메소드 호출
  }
}