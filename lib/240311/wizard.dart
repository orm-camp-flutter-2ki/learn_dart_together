
import 'wand.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand? wand;

  String get name => _name;
  int get hp => _hp;
  int get mp => _mp;

  Wizard(name, hp, mp, {required this.wand})
      : _name = name,
        _hp = hp,
        _mp = mp;

  set name(String nameValue) {
    if (nameValue.length < 3) {
      throw Exception('마법사의 이름은 null일 수 없고, 반드시 3문자 이상이어야 한다');
    }
    _name = nameValue;
  }

  set mp(int mpValue) {
    if (mpValue < 0) {
      throw Exception('마법사의 MP는 0 이상이어야 한다.');
    }
    _mp = mpValue;
  }

  set hp(int hpValue) {
    if (hpValue < 0) {
      _hp = 0;
      return;
    }
    _hp = hpValue;
  }
}
