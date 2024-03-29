abstract class Character {
  String name;
  int hp;

  Character(this.name, this.hp);

  void run() {
    print('$name이 도망쳤다.');
  }

  // 추상 메소드
  void attack(Slime slime);
}

class Archer extends Character {
  Archer(super.name, super.hp);

  @override
  void attack(slime) {
    // TODO: implement attack
  }
}
