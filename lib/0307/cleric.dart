class Cleric {

  late String name;
  late int hp;
  late int mp;
  final int maxHp = 50;
  final int maxMp = 10;

  Cleric(String name) {
    this.name = name;
    this.hp = this.maxHp;
    this.mp = this.maxMp;
  }
}