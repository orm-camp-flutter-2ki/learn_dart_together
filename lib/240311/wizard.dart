import 'hero.dart';
import 'wand.dart';

class Wizard {
  final String _name;
  int _hp; // hp를 final로 생성해야하는지? (final로 하면 26줄에서 에러), late 쓰임 확인필요
  final int _mp;
  final Wand _wand;

  Wizard({
    required String name,
    required int hp,
    required int mp,
    required Wand wand,
  })  : assert(name.length >= 3, '이름은 3글자 이상이어야 합니다.'),
        _name = name,
        // hp 음수인 경우 0
        _hp = (hp < 0) ? 0 : hp,
        assert(mp >= 0, 'mp는 0이상이어야 합니다.'),
        _mp = mp,
        _wand = wand;

  String get name => _name;
  int get hp => _hp;
  int get mp => _mp;
  //Wand? get wand => _wand;

  set hp(int hp) {
    _hp = _hpValidate(hp);
  }

  String _nameValidate(String name) {
    if (name.length < 3) {
      throw Exception('이름은 3글자 이상이어야 합니다.');
    } else {
      return name;
    }
  }

  int _hpValidate(int hp) {
    if (hp < 0) {
      return 0;
    } else {
      return hp;
    }
  }

  int _mpValidate(int mp) {
    if (mp < 0) {
      throw Exception('mp는 0이상이어야 합니다.');
    } else {
      return mp;
    }
  }

  void heal(Hero hero) {
    hero.hp += 10;
  }
}
