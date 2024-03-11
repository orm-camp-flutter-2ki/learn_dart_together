import 'package:learn_dart_together/24_03_07/wand.dart';
import 'Hero.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand _wand;

  Wizard(this._name, this._hp, this._mp, this._wand);

  Wand get wand => _wand!;

  String get name => _name;

  set name(String name) {
    if (name.length < 3) {
      throw Exception("마법사 이름 에러메시지");
    }
    _name = name;
  }

  int get mp => _mp;

  set mp(int mp) {
    if (mp < 0) {
      throw Exception("마법사 MP 에러메시지");
    }
    _mp = mp;
  }

  int get hp => _hp;

  set hp(int hp) {
    if (hp < 0) {
      _hp = 0;
    } else {
      _hp = hp;
    }
  }

  void heal(Hero hero) {
    hero.hp += 10;
  }
}
