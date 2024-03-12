import 'package:learn_dart_together/0308/hero.dart';
import 'package:learn_dart_together/0308/slime.dart';

//[?] 독 공격이 가능한 독 슬라임을 작성한다.
class PoisonSlime extends Slime {
  // poison 만의 field
  int _poisonCount = 5;

  // super 클래스의 생성자
  PoisonSlime(super.suffix);

  // getter
  int get poisonCount => _poisonCount;

  // setter
  set poisonCount(int countValue) {
    // poisonCount = countValue; // error: Stack Overflow
    _poisonCount = countValue;
    return;
  }

  // attack
  @override
  void attack(Hero hero) {
    // super 클래스 능력
    super.attack(hero);

    // 독 공격 횟수가 0 이라면 독 공격 안함
    if (poisonCount <= 0) return;

    // 독 공격 횟수가 1 이상일 때 추가 독 공격
    // poison 전용 독 피해
    final int poisonDamage = (hero.hp ~/ 5);
    if (poisonCount > 0) {
      print('${hero.name}에게 추가 독포자를 살포했다! $poisonDamage포인트의 추가 데미지를 주었다.');
      hero.hp -= poisonDamage;
      poisonCount -= 1;
    }
  }
}

void main() {
  Hero hero = Hero(name: '12일의 용사', hp: 120);
  PoisonSlime poisonSlime = PoisonSlime('포이즌 슬라임');

  print('[캐릭터 생성] 이름: ${hero.name}, HP: ${hero.hp}\n');
  print('====== 독 슬라임과 전투 시작 ======\n');

  // 독 공격 횟수가 0일때는 추가 피해가 없다.
  for (int i = 0; i < 6; i++) {
    poisonSlime.attack(hero);
    print('[현재 상태] 이름: ${hero.name}, HP: ${hero.hp}\n');
  }
}
