import 'package:learn_dart_together/24_03_11/wand.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand wand;

  Wizard({
    required String name, // Wizard 클래스의 name 필드는 다른 클래스에서 건드리지 못하게 접근 제한자 붙이기 , ex) 지팡이가(사물) 마법사의 이름을 건드릴 수 없다?
    required int hp,
    required this.wand, // wand 는 not null
    required int mp,
  }): _name = name, _mp = mp, _hp = hp;

  // ========== name의 getter / setter ==========
  String get name => _name;

  set name(String wizardName) {
    if (wizardName.length < 3) {
      throw Exception('마법사의 이름은 반드시 3글자 이상이어야 합니다.');
    }
    _name = wizardName;
  }

  // ========== mp의 getter / setter ==========
  int get mp => _mp;

  set mp(int magicianMp) {
    if (magicianMp < 0) {
      throw Exception('마법사의 mp는 0 이상이어야 합니다');
    }
    _mp = mp;
  }

  // ========== hp의 getter / setter ==========
  int get hp => _hp;

  set hp(int wizardHp) {
      if (wizardHp < 0) {
        _hp = 0;
      }
    _hp = hp;
  }
}

