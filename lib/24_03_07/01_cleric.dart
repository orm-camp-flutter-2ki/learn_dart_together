import 'dart:math';

// 1. top level 에서 상수 설정 했을 때
// const int maxHp = 50;
// const int maxMp = 10;

class Cleric {
  String name;
  int hp;
  int mp;

  // 2. class 에서 static 으로 상수 설정 했을 때
  static const int maxHp = 50;
  static const int maxMp = 10;

  // 에러
  // static final int maxHp = 50;
  // static final int maxMp = 10;

  // 1. top level 에서 상수 설정 했을 때
  Cleric(this.name, {this.hp = maxHp, this.mp = maxMp});

  // 2. class 에서 static 으로 상수 설정 했을 때
  // Cleric(this.name, {this.hp = Cleric.maxHp, this.mp = Cleric.maxMp});

  // 3. Cleric 함수를 쓸 때 'name:' 을 붙이지 않으려고 required 를 사용하지 않음
  // Cleric({required this.name, this.hp = maxHp, this.mp = maxMp});

  void selfAid() {
    if (mp == maxMp) {
      mp = maxMp - 5;
      hp = maxHp;
    } else if (5 <= mp && mp < maxMp) {
      mp -= 5;
      hp = maxHp;
    } else if (mp < 5) {
      print('MP가 부족합니다.');
    }
  }

  int pray(int second) {
    int recoveryMp = 0;

    if (mp < maxMp) {
      recoveryMp += second + Random().nextInt(3);

      // if문
      if (mp + recoveryMp > 10) {
        mp = maxMp;
      } else if (mp + recoveryMp <= 10) {
        mp = mp + recoveryMp;
      }
      // if 문을 삼항 연산자로
      // mp = mp + recoveryMp > 10 ? maxMp : mp + recoveryMp;
      //
    } else {
      print('이미 MP가 가득 찼습니다.');
      mp = maxMp;
    }
    return recoveryMp;
  }
}
