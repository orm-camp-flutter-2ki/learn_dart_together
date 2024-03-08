import 'dart:math';

class Cleric {
  static int maxHp = 50;
  static int maxMp = 10;

  // int level;
  String? name;
  int? hp;
  int? mp;

  Cleric({this.name, this.hp, this.mp}) {
    hp = (hp != null && hp! <= maxHp) ? hp : maxHp; // hp 최대치
    mp = (mp != null && mp! <= maxMp) ? mp : maxMp; // mp 최대치
    // hp = maxHp > 50 ? 50 : maxHp;
    // mp = maxMp > 10 ? 10 : maxMp;
  }

  selfAid(int a) {
    mp = a <= mp! ? mp! - a : mp;
    hp = maxHp - hp! < 0 ? maxHp : hp!;
  }

  // int pray() {
  //   int mpRegen = Random().nextInt(3);
  //   int availableMp = maxMp - mp!;
  //
  //   if (availableMp >= mpRegen) {
  //     mp! += availableMp;
  //     return mpRegen; // 회복량 반환
  //   } else {
  //     mp! += availableMp;
  //     print('마나가 부족합니다');
  //     return availableMp; // 회복이 불가능하면 0 반환
  //   }
  // }

}

void main() {
  final Cleric hero = Cleric(hp: 50, mp: 10);
  print('Hello');


  print('===== 클래릭 생성 =====');
  print('HP${hero.hp}, MP${hero.mp}');

  for (int i = 0; i < 3; i++) {
    hero.selfAid(5);
    print('===== selfAid() 발동 $i =====');
    print('${hero.hp}, ${hero.mp}');
  }

  // for (int i = 0; i < 3; i++) {
  //   print('===== pray() 발동 $i =====');
  //   int recoveryMp = hero.pray();
  //   print('${hero.hp}, ${hero.mp}, 회복량: $recoveryMp');
  // }
  print('Hello');
  final Cleric heroA = Cleric(name: '아서스', hp: 40, mp: 5);

  print('===== 아서스 생성 =====');
  print('이름${heroA.name}, HP${heroA.hp}, MP${heroA.mp}');

  final Cleric heroB = Cleric(name: '아서스', mp: 10);
  final Cleric heroC = Cleric(name: '아서스');
  final Cleric heroD = Cleric();
}
