import 'dart:math';

class Hero {
  String name;

  // int level;
  int hp;
  int initialHp;
  int mp;
  int initialMp;

  Hero(this.name, this.hp, this.initialHp, this.mp, this.initialMp) {
    hp = initialHp > 50 ? 50 : initialHp; // hp 최대치
    mp = initialMp > 10 ? 10 : initialMp; // mp 최대치
  }

  selfAid(int a) {
    mp = a <= mp ? mp - a : mp;
    hp = initialHp - hp < 0 ? initialHp : hp;
  }

  pray() {
    int mpRegen = Random().nextInt(3);
    if (initialMp - mp >= mpRegen) {
      mp += mpRegen;
      return mpRegen; // 회복량 반환
    } else if (initialMp - mp < mpRegen) {
      print('마나가 부족합니다');
      return 0; // 회복이 불가능하면 0 반환
    }
  }
}

void main() {
  Hero hero = Hero('cleric', 50, 50, 10, 10);

  print('===== 클래릭 생성 =====');
  print('${hero.name},HP${hero.hp}, MP${hero.mp}');

  for (int i = 0; i < 3; i++) {
    hero.selfAid(5);
    print('===== selfAid() 발동 $i =====');
    print('${hero.hp}, ${hero.mp}');
  }

  for (int i = 0; i < 3; i++) {
    print('===== pray() 발동 $i =====');
    int recoveryMp = hero.pray();
    print('${hero.hp}, ${hero.mp}, 회복량: $recoveryMp');
  }
}
