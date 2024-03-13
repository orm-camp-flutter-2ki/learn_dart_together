import 'sword.dart';
import 'slime.dart';

class Hero {
  String name;
  int _hp;
  Sword? sword;

  Hero({
    required this.name,
    required int hp,
    this.sword,
  }) : _hp = hp;

  // getter
  int get hp => _hp;

  // setter
  set hp(int value) {
    if (value < 0) {
      // throw Exception(' $name은 전사했습니다.');
    }
    _hp = 0;
  }

  // 메서드
  // 싸우기
  void attack(Slime slime) {
    print('영웅 $name 이(가) 공격했다');
    print('슬라임 ${slime.suffix} 에게 ${sword?.damage} 의 데미지');
    slime.hp -= 10;
  }
}
