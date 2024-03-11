import 'wand.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand _wand;

  Wizard(this._name, this._hp, this._mp, this._wand) {
    name = _name;
    hp = _hp;
    mp = _mp;
  }

  set name(String value) {
    if (value == null) {
      throw Exception('이름은 null 일 수 없습니다.');
    }

    _name = value;
  }

  set hp(int value) {
    if(value < 0) {
      _hp = 0;
    }

    _hp = value;
  }

  set mp(int value) {
    if(value < 0) {
      throw Exception('mp 는 0 이상이어야 합니다.');
    }

    _mp = value;
  }
}