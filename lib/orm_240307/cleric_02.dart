class Cleric {
  String name;
  int hp;
  int mp;
  final int maxhp=50;
  final int maxmp=10;
  Cleric(this.name, this.hp, this.mp);

  void selfAid(){
    mp -= 5;
    hp = maxhp;
  }
}