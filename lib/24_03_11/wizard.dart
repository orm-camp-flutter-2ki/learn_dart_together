import 'package:learn_dart_together/24_03_11/wand.dart';

class Wizard {
  String name;
  Wand wand;
  int hp;
  int mp;

  Wizard(this.name, this.hp, this.mp, this.wand);

  set setMP(int newMP) {
    if (newMP < 0) {
      throw Exception('MP는 0 이상으로 설정해주세요.');
    }

    mp = newMP;
  }

  set setHP(int newHP) {
    if (newHP < 0) {
      newHP = 0;
    }

    hp = newHP;
  }
}