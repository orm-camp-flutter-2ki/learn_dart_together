import 'slime.dart';
import 'hero.dart';

class PoisonSlime extends Slime {
  int _leftCount = 5;

  PoisonSlime(String suffix) : super(suffix);

  void attack(Hero hero) {
    if (_leftCount > 0) {
      print("추가로, 독 포자를 살포했다!");
      double damage = (hero.hp / 5); // HP의 1/5에 해당하는 데미지
      hero.hp -= damage;
      print("$damage 포인트의 데미지");
      --_leftCount; // 독 공격의 남은 횟수 감소
      if (_leftCount == 0) {
        print("공격 기회가 없습니다.");
      }
    }
  }
}

void main() {
  PoisonSlime a = PoisonSlime('공격');
  Hero b = Hero(100, 100);
  for (int i = 0; i < 5; i++) {
    a.attack(b);
  }
}
