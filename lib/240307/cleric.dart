class Cleric {
  String name;
  int hp = 50;

  int maxHp = 50;

  int mp = 10;

  int maxMp = 10;

  Cleric(this.name, this.hp, this.maxHp, this.mp, this.maxMp);

  void slefAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxHp;
      print('마나 에이드 사용. \nhp가 $hp이 되었습니다.\nmp가 $mp이 되었습니다');
    } else {
      print('마나가 부족합니다');
    }
  }
}

void main() {
  Cleric cleric = Cleric('클래릭', 50, 50, 10, 10);

  cleric.slefAid();
  cleric.slefAid();
  cleric.slefAid();
}
