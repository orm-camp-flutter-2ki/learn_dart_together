import 'package:learn_dart_together/24_03_11/02_person.dart';

class Wizard {
  String _name; // null 일 수 없고 반드시 3문자 이상

  int _hp; // hp가 음수가 될 경우 음수 대신 0 이 되도록 설정, 에러x
  int _mp;

  Wand wand; // null 불가

  Wizard(
      {required String name,
      required int hp,
      required int mp,
      required this.wand})
      : _name = name,
        _hp = hp,
        _mp = mp;

  String get name => _name;

  int get hp => _hp;
  int get mp => _mp;

  set name(String inputName) {
    if (inputName.length <= 3) {
      throw Exception('이름이 너무 짧습니다.');
    }
    _name = inputName;
  }

  set hp(int inputHp) {
    if (inputHp < 0) {
      _hp = 0;
    }
  }

  set mp(int inputMp) {
    if (inputMp < 0) {
      _mp = 0;
    }
  }
}

class Wand {
  String _name;
  double _power;

  Wand({required name, required power})
      : _name = name,
        _power = power;

  String get name => _name;

  double get power => _power;

  set name(String inputName) {
    if (inputName.length < 3) {
      throw Exception('이름이 너무 짧습니다.');
    }
    _name = inputName;
  }

  set power(double inputPower) {
    if (inputPower < 0.5 || 100 < inputPower) {
      throw Exception('지팡이의 마력은 0.5 이상 100.0 이하여야 합니다.');
    }
    _power = inputPower;
  }
}
