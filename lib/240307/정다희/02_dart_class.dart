import 'dart:math';

class Cleric {
  String name;
  int hp;
  int mp;
  static const int maxHp = 50;
  static const int maxMp = 10;

  Cleric( this.name, { hp, mp}): hp = hp ?? maxHp, mp = mp ?? maxMp;

  void selfAid() {
    if (mp < 5) {
      print('mp가 부족하여 selfAid를 사용할 수 없습니다.');
      return;
    }
    mp -= 5;
    hp = maxHp;
    print('mp 5를 소비해서 hp를 maxHp 만큼 회복했습니다.');
  }

  int pray(int praySec) {
    int ranNumber = Random().nextInt(3);
    int prevMp = mp;
    mp += praySec + ranNumber;
    int addedNum = praySec + ranNumber;
    if (mp > maxMp) {
      addedNum = maxMp - prevMp;
      mp = maxMp;
    }
    print(
        '기도한 시간 $praySec 에 $ranNumber 이 추가로 mp를 회복 하였습니다. 최대 mp는 $maxMp 이고 실제로 회복한 mp의 양은 $addedNum 입니다');
    return addedNum;
  }
}