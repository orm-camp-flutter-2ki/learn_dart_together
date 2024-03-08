// [i] 객체 지향 프로그래밍
// [?] 정의한 클래스로 인스턴스를 생성할 수 있다

/*
* 정의한 클래스로 인스턴스를 생성할 수 있다
* 인스턴스를 넣을 수 있는 새로운 변수의 타입을 만드는 것
* 클래스를 정의하면 이용 가능한 타입의 종류가 점점 늘어남
*/

class Hero {
  // class 생성, pascal case 표기
  String name; // field(==멤버 변수, 전역 변수) 작성, camel case로 표기
  int hp; // field

  // 생성자 : 인스턴스를 만드는 것
  // this. : 나의.name, 나의.hp
  Hero(this.name, this.hp);

  // 싸우기 동작 작성
  void attack() {
    int damAttack = 10; // 데미지
    hp -= damAttack; //
    print('[공격] 내 hp가 $damAttack만큼 감소했다. 현재 $name의 hp는 $hp');
  }

  // 도망 동작 작성
  void run() {
    print('<도망: 용사는 도망쳤다!>');
  }

  // 잠자기 기능 작성
  void sleep() {
    int healSleep = 20; // 회복향
    hp += healSleep;
    print('[수면] 내 hp가 $healSleep만큼 회복했다. 현재 $name의 hp는 $hp');
  }
}

void main() {
  // type이 Hero인 hero 인스턴스
  Hero hero = Hero('용사', 150);
  Hero hero2 = Hero('용사', 150);
  Hero hero3 = Hero('용사', 150);
  hero.attack();
  hero.attack();
  hero.attack();
  hero.run();
  hero.sleep();
}
