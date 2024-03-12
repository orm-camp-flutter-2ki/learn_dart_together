import 'package:learn_dart_together/24_03_12/practice_03/hero.dart';
import 'package:learn_dart_together/24_03_12/practice_03/slime.dart';

//독 슬라임(PoisonSlime) 은, 슬라임 (Slime) 중에서도 특히 “독 공격" 이 되는 것
//PoisonSlime 는 아래의 코드로 인스턴스화 되는 클래스임
//PoisonSlime poisonSlime = PoisonSlime(‘A’);
//PoisonSlime 독 공격이 가능한 남은 횟수를 int 형 필드를 가지고 있고 초기값은 5 이다
//PoisonSlime attack() 메소드가 호출되면 다음 내용의 공격을 한다
//우선, “보통 슬라임과 같은 공격"을 한다
//“독 공격의 남은 횟수"가 0이 아니면 다음을 추가로 수행한다
//화면에 “추가로, 독 포자를 살포했다!” 를 표시
//용사의 HP 의 1/5에 해당하는 포인트를 용사의 HP 로부터 감소시키고, “~포인트의 데미지" 라고 표시
//“독 공격의 남은 횟수" 를 1 감소 시킨다

class PoisonSlime extends Slime {
  int _poisonAttackPossible = 5; // 독 공격 가능 횟수 5

  PoisonSlime(super.suffix);

  int get poisonAttackPossible => _poisonAttackPossible;

  set poisonAttackPossible(int value) {
    if (value == 0) return;

    _poisonAttackPossible += value;
  }

  @override
  void attack(Hero hero) {
    super.attack(hero); // 우선, “보통 슬라임과 같은 공격"을 한다

    if (poisonAttackPossible > 0) {
      // “독 공격의 남은 횟수"가 0이 아니면
      print('추가로, 독 포자를 살포했다!'); // 표시

      int poisonDamage = hero.hp ~/ 5; // 독 데미지

      hero.hp -= poisonDamage; // 감소

      print('$poisonDamage포인트의 데미지'); // 표시

      poisonAttackPossible = -1; // 독 공격 가능 횟수 차감
    }

    if (hero.hp < 1) {
      // 공격으로 hero의 hp가 0이하가 되면 사망 처리
      hero.die();
    }
  }
}

void main() {
  Hero ataho = Hero(name: '아타호', hp: 50);
  PoisonSlime poisonSlime = PoisonSlime('A');

  for (int i = 0; i < 6; i++) {
    if (ataho.hp < 1) break;

    print('---${i + 1}---');
    poisonSlime.attack(ataho);
    print(ataho.hp);
  }
}
