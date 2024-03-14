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
  void c(){
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
  void c(){
    print('Bc');
  }
}

void main() {
  Y y1 = A();
  Y y2 = B();
  // y1.a();
  // y2.a();

  List<Y> instanceList = [];
  instanceList.add(y1);
  instanceList.add(y2);

  instanceList.forEach((element) {
    element.b();
  });

}