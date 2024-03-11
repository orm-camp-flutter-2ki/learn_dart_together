import 'package:learn_dart_together/240311/encapsulation/wand.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand? _wand;

  Wizard(this._name, this._hp, this._mp, this._wand);

  String get name => _name;

  set name(String value) {
    if (value.length < 3) {
      throw Exception('이름은 3글자 이상이어야 합니다.');
    }
    _name = value;
  }

  set hp(int value) {
    _hp = value;
    if (value < 0) _hp = 0;
  }

  set mp(int value) {
    if (value < 0) {
      throw Exception('마법사의 MP는 0 이상이어야 합니다.');
    }
    _mp = value;
  }
}
