import 'dart:math';

class Cleric {
  String name;
  int hp = 50;
  final int maxHp = 50;
  int mp = 10;
  final int maxMp = 10;

  Cleric(this.name, this.hp, this.mp);

  void selfAid() {
    if (mp > 4) { //mp가 5 이상이면
      mp -= 5; // mp를 5 소모해서
      hp = maxHp; // 현재 hp를 최대 hp로 만든다.
    } else { // mp가 5 미만이면 실패
      print('==== selfAid 실패 ====');
      print('mp가 부족 합니다.');
    }
  }

  int pray(int time) {
    int totalRecoveredMana = 0; // 총 회복 mp
    int correctionValue = Random().nextInt(3); // 보정값

    for (int i = 0; i < time; i++) {
      if (mp == maxMp) { // 최대 mp면 중단
        break;
      }

      mp++; // 초당 mp 1 회복
      totalRecoveredMana++; // 총 회복 mp량 1 증가
    }

    if (mp + correctionValue > maxMp) { // 현재 mp와 보정값을 더한 값이 최대 mp보다 크면
      totalRecoveredMana += maxMp - mp; // 총 mp 회복량에 최대mp에서 부족한 mp만큼 더해준다
      mp = maxMp; // mp는 최대 mp로 만든다
    } else { // 현재 mp와 보정값을 더한 값이 최대 mp보다 작으면
      mp += correctionValue; // 현재 mp에 보정값을 더해준다
      totalRecoveredMana += correctionValue; // 총 회복mp에 보정값을 더해준다
    }

    return totalRecoveredMana; // 총 회복 mp를 리턴한다
  }
}

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
