import '../24_03_07/hero.dart';
import '01_slime.dart';

class PoisonSlime extends Slime {
  int leftAttack = 5;

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    super.attack(hero);
    if (leftAttack > 0) {
      print('추가로, 독 포자를 살포했다!');
      double oneFifthHp = (hero.hp * 1 / 5);
      print('$oneFifthHp 포인트의 데미지');
      leftAttack -= 1;
    }
  }
}

void main() {
  PoisonSlime poisonSlime = PoisonSlime('A');
  Hero hero = Hero(name: 'name', hp: 50);
  poisonSlime.attack(hero);

}
