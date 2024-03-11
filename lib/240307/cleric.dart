import 'dart:math';

const int maxHp = 50;
const int maxMp = 10; 
class Cleric {
  /**
   * 커밋 메시지
   * 클레릭의 기본 속성을 정의했습니다.
   * 클레릭의 능력을 구현했습니다.
   * 클레릭을 문자열로 표현하는 기능을 추가했습니다.
   */
  String name;
  int _hp;
  int _mp;
  // final -> const
  //static const int maxHp = 50;
  //static const int maxMp = 10;

  int get hp {
    return this._hp;
  }

  int get mp {
    return this._mp;
  }

  Cleric({required this.name, int hp = maxHp, int mp = maxMp})
      : _mp = mp,
        _hp = hp;

  void selfAid() {
    if (_mp >= 5) {
      _mp -= 5;
      _hp = 50;
    } else {
      print('mp가 부족합니다. \nselfAid가 발동되지 않았습니다.');
    }
  }

  // 컨벤션주의
  // 캡슐화, 은닉화

  int pray(int seconds) {
    int addedMp = Random().nextInt(3); // 변수이름
    int mpRecovery = 0;

    mpRecovery += seconds + addedMp;

    if ((_mp + mpRecovery) >= maxMp) {
      _mp = maxMp;
    } else {
      _mp += mpRecovery;
    }
    return mpRecovery;
  }
}
