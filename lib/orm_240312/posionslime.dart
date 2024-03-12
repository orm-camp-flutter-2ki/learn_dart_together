import 'package:learn_dart_together/orm_240312/slime.dart';
import '../orm_240312/hero.dart';

class PoisonSlime extends Slime {
  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    int count = 5;
    print('슬라임 $suffix이/가 공격했다');
    hero.hp -= 10;
    if (count > 0) {
      print('추가로, 독 포자를 살포했다!');
      int poisonDamege = hero.hp ~/ 5;
      hero.hp -= poisonDamege;
      print('$poisonDamege 포인트의 데미지');
      count--;
      print('독 공격의 남은 횟수 $count');
    }
  }
}

void main(){
  Hero hero = Hero(name: 'anna');
  PoisonSlime poisonSlime = PoisonSlime('A');
  poisonSlime.attack(hero);
  print(hero.hp);
}