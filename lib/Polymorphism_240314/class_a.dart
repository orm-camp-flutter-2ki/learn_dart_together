class A extends Y {
  @override
  void a() {
    print('Aa');
  }

  @override
  void b() {
    print('Ab');
  }
}

//
class B extends Y {
  @override
  void a() {
    print('Ba');
  }

  @override
  void b() {
    print('Bb');
  }
}

abstract interface class X {
  void a();
}

abstract class Y implements X {
  void b();
}

// void main() {
//   // 연습문제2.1
//   X obj = A();
//   obj.a();
//   // 연습문제2.2
//   Y y1 = A();
//   Y y2 = B();
//   y1.a();
//   y2.a();
// }


void main() {
  print('연습문제3');
  final myList = <Y>[];
  Y y = A();
  Y y2 = B();
  myList.add(y);
  myList.add(y2);

  for (var myList in myList) {
    myList.a();
  }
}
