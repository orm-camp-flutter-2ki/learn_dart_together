import 'dart:math';
import 'package:learn_dart_together/practice/common.dart';
import 'wand.dart';

class Wizard {
  static const int minHp = 0;
  static const int maxHp = 50;
  static const int minMp = 0;
  static const int maxMp = 10;

  String _name = defaultName;
  int _hp = maxHp;
  int _mp = maxMp;
  Wand? _wand;

  set name(String? value) {
    if (value == null || value.length < minNameLen) {
      throw Exception("$minNameLen글자 이상의 이름을 입력해주세요.");
    }
    _name = value!;
  }

  set wand(Wand? value) {
    if (value == null) {
      throw Exception("마법사의 지팡이 초기값은 null이 될 수 없습니다.");
    }
    _wand = value;
  }

  set mp(int value) {
    if (value < minMp) {
      throw Exception("마법사의 mp 초기값은 $minMp 이상이어야 합니다.");
    }
    _mp = value;
  }

  set hp(int value) {
    _hp = max(minHp, value);
  }

  Wizard({required String? name, Wand? wand, int hp = maxHp, int mp = maxMp}) {
    this.name = name;
    this.wand = wand;
    this.hp = hp;
    this.mp = mp;
  }
}
