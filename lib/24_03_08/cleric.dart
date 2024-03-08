import 'dart:math';

void main() {
  Cleric cleric = Cleric(name :'홍길동', hp: 50, mp: 10);

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
  // 인스턴스가 생성될 때마다, 늘어나는 낭비를 방지 하고자 field 를 static 으로 변형 하였다. ^^
  static const int maxHp = 50;
  static const int maxMp = 10;

  String name = '';
  int hp = 50;
  int mp = 10;

  // 과제 연습문제 2번을 봤을때, D) 항목 때문에 required 키워드가 필요한 것 같다.
  // 필수 parameter 와 named parameter 를 같이 쓸 때, 순서는 필수 parameter 가 우선인 듯.
  // 이 부분이 머릿 속에서 빨리 전환 되는 반복 숙달 훈련이 필요할 것 같다. 다른 언어와 너무 헷갈린다 🫠🫠.
  Cleric({ required this.name, this.hp = maxHp, this.mp = maxMp });

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