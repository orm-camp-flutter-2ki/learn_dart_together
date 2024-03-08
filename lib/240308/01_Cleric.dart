import 'dart:math';

class Cleric {
  static const int maxHp = 50; // 동적 > 정적 (const) 사용
  static const int maxMp = 10;

  // int level;
  String name;
  int hp;
  int mp;

  // Constructor
  Cleric(this.name, {this.hp = maxHp, this.mp = maxMp});

  // 240307 Class
  int spendMp = 5;

  void selfAid() {
    if (mp >= spendMp) {
      mp = mp - spendMp;
      hp = maxHp;
    } else {
      print('마나가 부족합니다.');
    }
  }

  pray() {
    int mpRegen = Random().nextInt(3);
    if (maxMp - mp >= mpRegen) {
      mp = mp += mpRegen;
      return mpRegen;
    } else if (maxMp - mp < mpRegen) {
      print('마나가 부족합니다');
      return 0; // 회복이 불가능하면 0 반환
    }
  }
}

void main() {
  final Cleric hero = Cleric('클래릭', hp: 50, mp: 10);

  print('===== 클래릭 생성 =====');
  print('HP${hero.hp}, MP${hero.mp}');

  for (int i = 0; i < 3; i++) {
    hero.selfAid();
    print('===== selfAid() 발동 $i =====');
    print('${hero.hp}, ${hero.mp}');
  }

  for (int i = 0; i < 3; i++) {
    print('===== pray() 발동 $i =====');
    int recoveryMp = hero.pray();
    print('${hero.hp}, ${hero.mp}, 회복량: $recoveryMp');
  }

  // 240308 Class
  print('Hello');
  final Cleric heroA = Cleric('아서스', hp: 40, mp: 5);
  print('===== 아서스 생성 A =====');
  print('이름: ${heroA.name}, HP: ${heroA.hp}, MP: ${heroA.mp}');

  final Cleric heroB = Cleric('아서스', hp: 35);
  print('===== 아서스 생성 B =====');
  print('이름: ${heroB.name}, HP: ${heroB.hp}, MP: ${heroB.mp}');

  final Cleric heroC = Cleric('아서스');
  print('===== 아서스 생성 C =====');
  print('이름: ${heroC.name}, HP: ${heroC.hp}, MP: ${heroC.mp}');

  final Cleric heroD = Cleric(); // 이름 미기재 시 오류 확인용 코드
}
