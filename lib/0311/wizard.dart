import 'wand.dart';

class Wizard {

  static final int minHp = 0;
  late String _name;
  late int _hp;
  late int _mp;
  Wand _wand;

  Wizard(String name, int hp, int mp, this._wand) {
    this.name = name;
    this.hp = hp;
    this.mp = mp;
  }

  void set name(String name) {
    if (name.length < 3) {
      throw Exception('이름은 세 글자 이상이어야 합니다.');
    }
    _name = name;
  }

  void set hp(int hp) {
    if (hp < 0) {
      _hp = minHp;
    } else {
      _hp = hp;
    }
  }

  void set mp(int mp) {
    if (mp < 0) {
      throw Exception('MP는 0 이상이어야 합니다.');
    }
    _mp = mp;
  }

  String get name => _name;

  int get mp => _mp;

  int get hp => _hp;

  Wand get wand => _wand;
}