import 'sword.dart';

import 'hero.dart';

class Slime {
  double hp = 50;
  final String suffix;

  Slime(this.suffix);

  void attack(Hero hero) {
    //attack method in class Slime
    print('슬라임$suffix이/가 공격했다');
    print('10의 데미지');
    hero.hp -= 10;
  }
}

class PoisonSlime extends Slime {
  int poisonCount = 5;

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    super.attack(hero); // 보통 슬라임과 같은 공격

    if (poisonCount > 0) {
      print('추가로,독 포자를 살포했다!');
      int damage = hero.hp * 1 ~/ 5;
      print('$damage 포인트의 데미지');
      poisonCount--;
      hero.hp = hero.hp - damage;
    }
  }
}

void main() {
  PoisonSlime poisonSlime = PoisonSlime('A'); // 인스턴스화 (3-2)
  Hero hero = Hero(hp: 200, name: '윤아');

  poisonSlime.attack(hero);
  print('${hero.name}의 hp는 ${hero.hp}');
}
