import 'dart:math';

// 1. top level 에서 상수 설정 했을 때
const int maxHp = 50;
const int maxMp = 10;

class Cleric {
  String name;
  int hp;
  int mp;

  // 2. class 에서 static 으로 상수 설정 했을 때
  // static const int maxHp = 50;
  // static const int maxMp = 10;

  // 에러
  // static final int maxHp = 50;
  // static final int maxMp = 10;

  // 1. top level 에서 상수 설정 했을 때
  Cleric(this.name, {this.hp = maxHp, this.mp = maxMp});

  // 2. class 에서 static 으로 상수 설정 했을 때
  // Cleric(this.name, {this.hp = Cleric.maxHp, this.mp = Cleric.maxMp});

  // 3. Cleric 함수를 쓸 때 'name:' 을 붙이지 않으려고 required 를 사용하지 않음
  // Cleric({required this.name, this.hp = maxHp, this.mp = maxMp});
}
