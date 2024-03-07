import 'dart:math';

class Cleric {
  final int maxHp = 50;
  final int maxMp = 10;

  String name;
  int hp = 50;
  int mp = 10;

  Cleric(this.name, this.hp, this.mp);

  void selfAid() {
    int maxiumSpendMp = 5; // selfAid에 사용하는 mp의 양

    // maxiumSpendMp 보다 mp가 적을 경우 남아있는 mp 만큼 회복
    if(mp < maxiumSpendMp) {
      hp + mp > maxHp ? hp = maxHp : hp += mp;
      mp = 0;
    } else {
      mp -= maxiumSpendMp;
      hp = maxHp;
    }
  }

  int pray(int time) {
    if(mp == maxMp) return 0; // 현재 mp와 maxMp 가 같을때 0 반환

    int randomRecoverMp = Random().nextInt(2);
    int recoverMp = time + randomRecoverMp; // 기도로 회복하는 mp
    int maximumRecoverMp = maxMp - mp; // 최대 회복가능한 mp

    // recoverMp 가 maxiumRecoverMp 보다 크다면 maxiumRecoverMp, 아니라면 recoverMp 를 actualRecoverMp 변수에 저장
    int actualRecoverMp = recoverMp > maxMp - mp ? maximumRecoverMp : recoverMp;
    
    mp += actualRecoverMp;
    return actualRecoverMp;
  }
}