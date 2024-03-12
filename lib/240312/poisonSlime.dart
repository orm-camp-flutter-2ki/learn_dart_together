import 'slime.dart';
import 'hero.dart';

void main() {
  Hero hero = Hero(name: '홍길동', hp: 50);
  Slime gilime = PoisonSlime('A');
  gilime.attack(hero);
  print(hero.hp);
}

//private 값을 메서드 안에서 바꿔야 할때 어떻게 하나요?

class PoisonSlime extends Slime {
  //파워 포인트
  int _attackPoint = 5;

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    super.attack(hero);
    if (_attackPoint > 0) {
      print('추가로, 독 포자를 살포했다!');
      int damage = (hero.hp ~/ 5).toInt();
      hero.hp -= damage;
      print('{$damage} 포인트의 데미지');
      _attackPoint -= 2;
      print('pp:$_attackPoint');
    }
  }
}
