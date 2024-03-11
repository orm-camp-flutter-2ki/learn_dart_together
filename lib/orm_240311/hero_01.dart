import '../orm_240308/slime.dart';
import 'sword.dart';

class Hero {
  // 클래스가 가지는 속성을 field, 멤버변수 라고 부름
  static int money = 100;
  String name;
  int _hp; //hp를 private로 지정한 코드_0
  String? sword;

  int get hp => _hp; //Hero 클래스에 hp 게터를 추가

  // 생성자 : 인스턴스를 만드는 방법을 제공
  Hero({
    required this.name,
    required int hp, //hp를 private로 지정한 코드_1
    this.sword,
  }) : _hp = hp;

  //hp를 private로 지정한 코드_2

  void bye() {
    print('바이');
  }

  void _die() {
    print('죽었다.');
  }

  // 메서드
  // 싸우기
  void attack(Slime slime) {
    print('[$name이 $slime을 공격했다.]');
    print('[슬라임의 반격을 받았다.]');
    _hp -= 10;
    if (_hp <= 0) {
      _die();
    }
    showHp();
  }

  // 도망가기
  void run() {
    print('[$name 은(는) 도망쳤다.]');
  }

  // 잠자기
  void sleep() {
    print('[$name 가 잠을 잡니다.]');
    showHp();
  }

  void showHp() {
    print('[현재 $name 의 체력은 $_hp]');
  }
}

void main() {
  final hero1 = Hero(name: '홍길동', hp: 100);
  final sword = Sword(name: '바스타드 소드', damage: 5);
  final hero2 = hero1;
  hero2._hp = 200;
  print(hero1.name);
  print(hero2._hp);
  print(sword.damage);
}
