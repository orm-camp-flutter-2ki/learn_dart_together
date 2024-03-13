import 'package:learn_dart_together/24_03_12/hero.dart';

// 기본 제공 클래스
class Slime {
  int hp = 50;
  final String suffix;

  Slime(this.suffix);

  void attack(Hero hero) {
    print('슬라임$suffix이/가 공격했다.');
    print('10의 데미지');
    hero.hp -= 10;
  }
}

// 만들어야 하는 클래스 (연습문제)
class PoisonSlime extends Slime {
  int poisonCount = 5; // 독 공격 가능 횟수 (3-3)

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    super.attack(hero); // 보통 슬라임과 같은 공격 (3-4-a)

    // 독 공격 (3-1)
    if (poisonCount > 0) {
      // 독 공격 남은 횟수가 0이 아니면 (3-4-b)
      print('추가로 독 포자를 살포했다!'); // 화면에 '추가로 독 포사 살포' 표시 (3-4-c)
      int damage = (hero.hp * 20) ~/ 100; // 용사 hp의 1/5, ~/를 사용해서 정수형 반환 (3-4-d)
      hero.hp -= damage;
      print('$damage포인트의 데미지'); // '~ 포인트의 데미지' 표시 (3-4-d)
      poisonCount--; // 독 공격 가능 횟수 1 감소 (3-4-e)
    }
  }
}

void main() {
  PoisonSlime poisonSlime = PoisonSlime('A'); // 인스턴스화 (3-2)
  Hero hero = Hero(hp: 200, name: '메이지');

  poisonSlime.attack(hero);
}
