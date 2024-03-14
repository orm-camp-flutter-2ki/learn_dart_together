import 'hero.dart';
import 'wand.dart';

class Wizard {
  String _name;
  int _hp;
  Wand? wand;

  Wizard({
    required String name,
    required int hp,
  }) : _name = name, _hp = hp;

  void heal(Hero hero) {
    hero.hp += 10;
  }

  String get name => _name;

  // 마법사 이름은 반드시 3문자 이상이어야 한다
  set name(String value) {
    if (value.length < 3) {
      throw Exception('지팡이의 반드시 3문자 이상이어야 한다');
    }

    _name = value;
  }

  int get hp => _hp;
  // HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)
  set hp(int value) {
    if (value < 0) {
      _hp = 0;
      return;
    }
    _hp = value;
  }


// 마법사의 지팡이는 null 일 수 없다.
// 마법사의 MP는 0 이상이어야 한다.
}
