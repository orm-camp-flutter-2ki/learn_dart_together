import 'package:learn_dart_together/24_03_07/slime.dart';
import 'Hero.dart';

class PoisonSlime extends Slime {
  PoisonSlime(super.suffix);

  int poisonAttack = 5;

  @override
  void attack(Hero hero) {
    super.attack(hero);
    if (poisonAttack != 0) {
      print('추가로, 독 포자를 살포했다!');
      int demage = hero.hp ~/ 5;
      hero.hp -= demage;
      print('$demage포인트의 데미지');
      poisonAttack--;
    }
  }
}

void main() {
  PoisonSlime poisonSlime = PoisonSlime('독버섯');
  Hero hero = Hero(name: '용사', hp: 100);
  poisonSlime.attack(hero);
  print('${hero.name}의 남은 hp : ${hero.hp}');
}