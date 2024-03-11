import 'package:learn_dart_together/0308/wand.dart';
import 'hero.dart';

class Wizard {
  String _name; // (_)private
  int _hp;
  int _mp;
  Wand wand;

  Wizard({
    required String name,
    required int hp,
    required int mp,
    required this.wand,
  })  : _name = name,
        _hp = hp,
        _mp = mp;

  // getter
  String get name => _name;

  int get hp => _hp;

  int get mp => _mp;

  // setter
  // [1] 이름은 null일 수 없고, 반드시 3글자 이상으로 설정
  set name(String nameValue) {
    if (nameValue.length < 3) {
      throw Exception('마법사 이름은 반드시 3글자 이상으로 설정해주세요.');
    }
    _name = nameValue;
  }

  // [2] hp가 음수가 되는 상황에서는 0으로 설정 [error X]
  set hp(int hpValue) {
    if (hpValue < 0) {
      hpValue = 0;
    }
    _hp = hpValue;
  }

  // [3] mp는 0 이상이어야 한다.
  set mp(int mpValue) {
    if (mpValue < 0) {
      throw Exception('mp는 0이상으로 설정해주세요.');
    }
    _mp = mpValue;
  }

// heal 동작
// void heal(Hero hero) {
//   int healStart = 10;
//   hero.hp += healStart;
//   print('${hero.name}의 hp를 $healStart만큼 회복했다.');
// }
}
