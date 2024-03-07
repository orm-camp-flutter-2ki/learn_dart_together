class Cleric {
  String name;
  int hp = 50;
  final int maxHp = 50;
  int mp = 10;
  final int maxMp = 10;

  Cleric(this.name, this.hp);

  void selfAid() {
    if (hp < 50) {
      mp -= 5;
      hp = maxHp;
    }
  }
}