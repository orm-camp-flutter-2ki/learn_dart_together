import 'dart:math';

void main() {
  Cleric cleric = Cleric('홍길동', 50, 10);

  print('===== 클래릭 생성 =====');
  print('${cleric.hp}, ${cleric.mp}');

  for (int i = 0; i < 3; i++) {
    cleric.selfAid();
    print('===== selfAid() 발동 $i =====');
    print('${cleric.hp}, ${cleric.mp}');
  }

  for (int i = 0; i < 3; i++) {
    print('===== pray() 발동 $i =====');
    int recoveryMp = cleric.pray(5);
    print('${cleric.hp}, ${cleric.mp}, 회복량: $recoveryMp');
  }
}


class Cleric {
  // 인스턴스가 생성될 때마다, 늘어나는 낭비를 방지하고자 field 를 static 으로 변형하였다. ^^
  static final int maxHp = 50;
  static final int maxMp = 10;

  String name = '';
  int hp = 50;
  int mp = 10;

  Cleric(this.name, this.hp, this.mp);

  void selfAid() {
    mp -= 5;
    hp = maxHp;
    print('mp -5 , maxHp로 회복');
  }

  int pray (int prayTime) {
    int previousMp = mp;
    int recoveryStat = prayTime + Random().nextInt(3);
    int realRecoveryStat = prayTime + recoveryStat;

    mp += realRecoveryStat;

    if (mp > maxMp) {
      realRecoveryStat = maxMp - previousMp;
      mp = maxMp;
      print('mp를 회복했습니다. 기도 시간은 $prayTime과 같고 $realRecoveryStat 만큼 회복했어요 ');
    }

    return realRecoveryStat;
  }
}