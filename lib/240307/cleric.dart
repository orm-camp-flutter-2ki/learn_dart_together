import 'dart:math';

class Cleric {
  static const int maxHp = 50;
  static const int maxMp = 10;

  String name;
  int hp;
  int mp;

  Cleric({required this.name, this.hp = maxHp, this.mp = maxMp});

  void selfAid() {
    int maxiumSpendMp = 5; // selfAid에 사용하는 mp의 양

    // maxiumSpendMp 보다 mp가 적을 경우 남아있는 mp 만큼 회복
    if(mp < maxiumSpendMp) {
      hp = hp + mp > maxHp ? maxHp : hp + mp;
      mp = 0;
    } else {
      mp -= maxiumSpendMp;
      hp = maxHp;
    }
  }

  int pray(int time) {
    if(mp == maxMp) return 0; // 현재 mp와 maxMp 가 같을때 0 반환

    int recoverMp = time + Random().nextInt(3); // 기도로 회복하는 mp
    int maximumRecoverMp = maxMp - mp; // 최대 회복가능한 mp

    // recoverMp 가 maxiumRecoverMp 보다 크다면 maxiumRecoverMp, 아니라면 recoverMp 를 actualRecoverMp 변수에 저장
    int actualRecoverMp = recoverMp > maximumRecoverMp ? maximumRecoverMp : recoverMp;
    
    mp += actualRecoverMp;
    return actualRecoverMp;
  }
}