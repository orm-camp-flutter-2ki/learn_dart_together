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
    if (value.length < 3) {
      throw Exception('이름은 반드시 3글자 이상이어야 합니다.');
    }

    _name = value;
  }

  set hp(int value) {
    _hp = value < 0 ? 0 : value;
  }

  set mp(int value) {
    if(value < 0) {
      throw Exception('mp 는 0 이상이어야 합니다.');
    }

    _mp = value;
  }

  String get name => _name;
  int get hp => _hp;
  int get mp => _mp;
  Wand get wand => _wand;
}