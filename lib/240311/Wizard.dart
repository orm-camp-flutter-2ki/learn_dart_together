import 'dart:async';
import 'Wand.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand wand;

  String get name => _name;

  int get mp => _mp;

  int get hp => _hp;

  Wizard(this._name, this._hp, this._mp, this.wand);

  set name(String value) {
    if (value.length < 3) {
      throw Exception('이름이 너무 짧습니다.');
    }
    _name = value;
  }

  set mp(int value) {
    if (value < 0) {
      throw Exception('mp수치가 잘못되었습니다');
    }
    _mp = value;
  }

  set hp(int valueHp) {
    valueHp < 0 ? hp = 0 : hp = valueHp;
  }
}
