abstract interface class X {
  void a();
}

abstract class Y implements X {
  void b();
}

//A클래스
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

//B클래스
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
// void main() {
//   X obj = A();
//   obj.a();
//
//   Y y1 = A();
//   y1.a();
//
//   Y y2 = B();
//   y2.a();
// }

//List로 묶기

void main () {
  List<Y> y = [];
  // final y = <Y>[];

  y.add(A());
  y.add(B());
  
  for (var item in y){ //b()메소드 호출
    item.b();
  }
}