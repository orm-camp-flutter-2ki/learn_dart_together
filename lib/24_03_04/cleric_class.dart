import 'dart:math';

class Cleric {
  String name;

  int hp;
  int mp;

  static const maxHP = 50; // HP & MP 최대값 필드 공유, 컴파일 타임 상수 = const 사용
  static const maxMP = 10; // HP & MP 최대값 필드 공유, 컴파일 타임 상수 = const 사용

  Cleric(this.name, // 이름 지정 필수
      {this.hp = Cleric.maxHP,
      this.mp = Cleric.maxMP}); // mp 없으면 기본값 = maxMP(10))

  void selfAid() {
    if (mp >= 5) {
      hp = maxHP;
      mp -= 5;
    }
  }

  int pray([int seconds = 1]) {
    // 1초에 한번씩

    int recoveryMP = seconds + Random().nextInt(3);
    // 1초 + 0~2

    if (mp + recoveryMP > maxMP) {
      // 현재 MP에서 추가값이 최대치를 초과하는지

      recoveryMP = maxMP - mp;
      // 초과하면 추가값을 최대치에서 현재값을 빼서 조정
    }

    mp += recoveryMP;
    // 현재값을 추가값만큼 증가

    return recoveryMP;
    // 반환
  }
}

/*
main용 새로운 dart 파일 생성
cleric 클래스와 main 분리
*/