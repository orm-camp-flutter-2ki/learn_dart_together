/// 연습문제 1
/// 빈칸에 들어갈 적절한 클래스명을 정하시오.
/// (1)
/// 이미지 : 'Sword' 인스턴스
/// 해설문 : 'Sword'를 생성했지만 어쨌든 'item'으로 보임
///
/// (2)
/// 'Monster' monster = 'Slime'();
/// 이미지 : 'Slime' 인스턴스
/// 해설문 : Slime을 생성했지만 어쨋든 'Monster'로 보임

/// 연습문제 2
///이런 클래스가 선언되어 있다.
/// 다음 물음에 답하시오
///
/// X obj = A(); 로 A인스턴스를 생성한 후, 변수 obj에서 호출할 수 있는 메소드를 a(), b(), c() 중에 골라보시오
///
///
/// Y y1 = A();
/// Y y2 = B(); 로 A와 B의 인스턴스를 생성한 후
/// y1.a();
/// y2.a(); 를 실행했을 때에 화면에 표시되는 내용을 말하시오.
/// y1.a() : Aa, y2.a() : Ba

/// 연습문제 3
/// 문제 2 에서 이용한 A클래스나 B클래스의 인스턴스를 각각 1개씩 생성하여, List 에 차례로 담는다.
/// 그 후에 List 의 요소를 차례대로 꺼내 각각의 인스턴스의 b() 메소드를 호출 하여야 한다. 이상을 전제로 다음 물음에 답하시오.
/// List 변수의 타입으로 무엇을 사용하여야 하는가?
/// -> Y
/// 위에서 설명하고 있는 프로그램을 작성하시오

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
  // 연습문제 2번
  // X obj = A();
  // obj.a();

  // Y y1 = A();
  // Y y2 = B();
  // y1.a();
  // y2.a();

  // 연습문제 3번
  A a1 = A();
  B b1 = B();

  List<Y> lists = [];
  lists.add(a1);
  lists.add(b1);

  for(var list1 in lists) {
    list1.b();
  }
}
