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

void main(List<String> arguments) {
  // X obj = A();
  // obj.a();
  // obj.b;
  // obj.c;

  // Y y1 = A();
  // Y y2 = B();
  // y1.a();
  // y2.a();

  final abs = <Y>[];
  abs.add(A());
  abs.add(B());

  abs.forEach((abs) {
    abs.b();
  });
}


//1. a()

//2. 1)Aa 2) Ba