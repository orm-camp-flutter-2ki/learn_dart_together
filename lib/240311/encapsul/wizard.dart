import 'package:learn_dart_together/240311/encapsul//wand.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand? _wand;

  Wizard(this._name, this._hp, this._mp, this._wand);

  // String get name => _name; // _name 변수의 값을 반환하는 getter 메서드
  // int get hp => _hp; // _hp 변수의 값을 반환하는 getter 메서드
  // int get mp => _mp; // _mp 변수의 값을 반환하는 getter 메서드
  // Wand? get wand => _wand; // _wand 변수의 값을 반환하는 getter 메서드

  // 마법사의 이름을 설정하는 setter 메서드
  set name(String value) {
    if (value.length < 3) {
      throw Exception('이름은 3글자 이상이어야 합니다.');
    }
    _name = value;
  }

  // 마법사의 마나를 설정하는 setter 메서드 (음수로 설정되는 경우 예외가 발생)
  set mp(int value) {
    if (value < 0) {
      throw Exception('MP는 0 이상이어야 합니다.');
    }
    _mp = value;
  }

  // 마법사의 지팡이를 설정하는 setter 메서드 (null이 들어오는 경우 예외가 발생)
  set wand(Wand? wand) {
    if (wand == null) {
      throw Exception('지팡이는 반드시 착용하여야 합니다.');
    }
    _wand = wand;
  }

  // 마법사의 체력을 설정하는 setter 메서드 (음수로 설정되는 경우 0으로 설정)
  set hp(int value) {
    _hp = value;
    if (value < 0) _hp = 0;
  }
}