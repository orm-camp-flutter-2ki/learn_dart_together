import 'package:dart_cli_practice/240307/slime.dart';
import 'package:dart_cli_practice/240311/wand.dart';
import 'charcter.dart';

class Wizard extends Character {
  String _name;
  int _hp;
  int _mp;
  Wand _wand;

  Wizard({required String name, required int hp, required int mp, required Wand wand})
  : _name = name,
    _hp = hp,
    _mp = mp,
    _wand = wand;

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

  @override
  attack(Slime slime) {
    print('$name 이 ${slime.suffix} 을 공격했다.');
    slime.hp -= 20;
  }

  void fireball(Slime slime) {
    print('$name 이 파이어볼을 쏘았다.');
    print('${slime.suffix} ');
    slime.hp -= 50;
    mp -= 20;
  }

}