class Cleric {

  String name = '';
  int hp = 50;
  int mp = 10;
  final int maxHp = 50;
  final int maxMp = 10;

  Cleric(this.name, this.hp, this.mp);

  void selfAid() {
    mp -= 5;
    hp = maxHp;
    print('mp -5 , maxHp로 회복');
  }
}