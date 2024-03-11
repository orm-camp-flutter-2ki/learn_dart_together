import 'package:learn_dart_together/24_03_07/wand.dart';

class Wizard {
  late String _name;
  late int _hp;
  late int _mp;
  Wand? _wand;

  Wizard(
      {required String name,
      required int hp,
      required int mp,
      required Wand wand}) {
    // 인스턴스 생성시 setter 함수 호출
    // 파라미터로 들어감
    this.name = name;
    this.hp = hp;
    this.mp = mp;
    this.wand = wand;
  }

  set name(String nameValue) {
    if (nameValue.length < 3) {
      // 1.
      throw Exception('이름은 3글자 이상이어야 합니다.');
    }
    _name = nameValue;
  }

  set wand(Wand? wand) {
    if (wand == null) {
      // 3.
      throw Exception('마법사는 지팡이가 있어야 합니다.');
    }

    _wand = wand;
  }

  set mp(int mpValue) {
    if (mpValue < 0) {
      // 4.
      throw Exception('마법사의 mp는 0 이상이어야 합니다.');
    }

    _mp = mpValue;
  }

  set hp(int hpValue) {
    if (hpValue < 0) {
      // 5.
      _hp = 0;
    }

    _hp = hpValue;
  }
}
