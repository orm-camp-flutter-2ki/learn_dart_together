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

//List로 묶기, 연습문제 3
void main () {
  List<Y> y = []; //변수타입 Y로 사용
  // final y = <Y>[];

  y.add(A());
  y.add(B());
  
  for (var item in y){
    item.b(); //b()메소드 호출
  }
}