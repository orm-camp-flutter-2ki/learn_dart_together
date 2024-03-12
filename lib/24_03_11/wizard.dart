import 'wand.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand wand;

  Wizard({
    required String name,
    required int hp,
    required int mp,
    required this.wand,
  })  : _name = name,
        _mp = mp,
        _hp = hp;


  String get name => _name;

  int get mp => _mp;

  int get hp =>_hp;

  set name(String value) {
    if (value.length < 3) {
      throw Exception('이름이 너무 짧습니다.');
    } else {
      _name = value;
    }
  }

  set mp(int value) {
    if (value < 0 || value == false) {
      throw Exception('0 이상이어야 합니다.');
    } else {
      _mp = value;
    }
  }

  set hp(int value) {
    _hp = value < 0 ? 0 : value;
  }
}



