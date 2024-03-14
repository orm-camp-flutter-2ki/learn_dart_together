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

void main() {
  //연습2-1
  X obj = A();
  print('2-1 답');
  obj.a();
  // obj.b;
  // obj.c;

  //연습2-2
  Y y1 = A();
  Y y2 = B();

  print('2-2 답');
  y1.a();
  y2.a();

  final abs = <Y>[];
  abs.add(A());
  abs.add(B());

  print('3 답');

  abs.forEach((abs) {
    abs.b();
  });
}


//2-1. a()

//2-2. 1)Aa 2) Ba

//3. Ab Bb