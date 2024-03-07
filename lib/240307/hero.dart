class Hero {
  String name;
  int hp;

  // 생성자 : 인스턴스 만드는 방법을 제공하는 함수같은 놈
  Hero(this.name, this.hp); // this : 나

  // 메서드
  // 싸우기
  void attack() {
    hp -= 5;
    print('이상하다 왜 내피가 $hp가 까지지?');
  }

  // 도망
  void run() {

  }
}

void main() {
  int i = 10;
  String name = 'aaa';
  double d = 30.0;

  // 내가 만든 것
  Hero hero = Hero('홍길동', 100);
  Hero hero2 = Hero('홍길동', 100);
  Hero hero3 = Hero('홍길동', 100);

  print('공격 전 : ${hero.hp}');
  hero.attack();
  print('공격 후 : ${hero.hp}');
}