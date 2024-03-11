import 'wand.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand _wand;

  Wizard({required String name, int hp = 0, int mp = 0, required Wand wand})
      : _name = name,
        _hp = hp,
        _mp = mp,
        _wand = wand {
    this.name = name;
    this.hp = hp;
    this.mp = mp;
    this.wand = wand;
  }

  String get name => _name;

  set name(String valueName) {
    if (valueName.length < 3) {
      throw Exception("이름은 3자 이상이어야 합니다.");
    }
    _name = valueName;
  }

  int get hp => _hp;

  set hp(int valueHp) {
    if (valueHp < 0) {
      _hp = 0;
    } else {
      _hp = valueHp;
    }
  }

  int get mp => _mp;

  set mp(int nvalueMp) {
    if (nvalueMp < 0) {
      throw Exception("MP는 0 이상이어야 합니다.");
    }
    _mp = nvalueMp;
  }

  Wand get wand => _wand;

  set wand(Wand newWand) {
    _wand = newWand;
  }
}
