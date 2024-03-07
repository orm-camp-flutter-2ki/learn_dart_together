class Cleric {
  String name;

  int HP;
  int MP;

  final int maxHP = 50;
  final int maxMP = 10;

  Cleric(
    this.name,
    this.HP,
    this.MP,
  );

  void selfAid() {
    if (MP >= 5) {
      HP = maxHP;
      MP -= 5;
    }
  }
}
