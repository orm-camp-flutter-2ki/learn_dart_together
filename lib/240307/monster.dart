abstract class Monster {
  int hp;
  int mp;

  Monster(this.hp, this.mp);

  void attack();
  void run();
}

abstract class WalkingMonster extends Monster {
  WalkingMonster(super.hp, super.mp);

  @override
  void run() {
    print('뚜벅뚜벅');
  }
}

class Goblin extends WalkingMonster {
  Goblin(super.hp, super.mp);

  @override
  void attack() {
    print('끼요오옷');
  }

  @override
  void run() {
    super.run();
    print('폴짝');
  }
}