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
  String name;
  int hp = 50;
  int mp = 10;
  static final int maxHp = 50;
  static final int maxMp = 10;


  Cleric(this.name, this.hp, this.mp); // 생성자를 통해 인스턴스의 초기값을 설정

  void selfAid() {
    if (mp >= 5) {
      mp -= 5; // 현재 mp에서 5를 뺀 값을 다시 mp에 할당
      hp = maxHp; // 현재 hp를 최대(maxHp)로 설정해 회복 수행

    }

  }

  int pray(int prayTime) {

    Random random = Random(); // Random 클래스의 인스턴스를 생성
    int recoveryAmount = random.nextInt(3) + prayTime;
    //random 인스턴스의 nextInt 메서드를 호출해 0~2까지 랜덤 호출하고, +prayTime 변수의 값을 더해 보정된 회복량 계산

    int actualRecoveryAmount = min(
        maxMp - mp, recoveryAmount); // 최대 MP를 넘지 않도록 회복량 조정(최대mp, 현재mp 비교해서)

    mp += actualRecoveryAmount; //실제 회복된 마나 양을 현재 마나에 더함

    print('회복량: $actualRecoveryAmount');
    return actualRecoveryAmount;
  }
}