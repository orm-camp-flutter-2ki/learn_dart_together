import 'dart:math';

class Cleric {
  String name;

  int hp;
  int mp;

  static const int maxHP = 50; // HP & MP 최대값 필드 공유, 컴파일 타임 상수 = const 사용
  static const int maxMP = 10; // HP & MP 최대값 필드 공유, 컴파일 타임 상수 = const 사용

  Cleric({
    required this.name, // 이름 지정 필수
    this.hp = 50, // hp 없으면 기본값 = maxHP(50)
    this.mp = 10, // mp 없으면 기본값 = maxMP(10)
  });

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
