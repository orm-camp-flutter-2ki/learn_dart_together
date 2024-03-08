import 'cleric.dart';
import 'hero.dart';
import 'slime.dart';

void main() {
  Hero hero = Hero('홍길동', 100);

  Slime slime1 = Slime(50, 'A');
  Slime slime2 = Slime(48, 'B');

  // 모험의 시작
  print('[모험을 떠납니다...]');
  hero.attack();
  slime1.run();
  slime2.run();
  hero.run();
  hero.sleep();

  Cleric cleric = Cleric('홍길동', 50, 10);

  print('===== 클래릭 생성 =====');
  print('${cleric.hp}, ${cleric.mp}');

  for (int i = 0; i < 3; i++) {
    cleric.selfAid();
    print('===== selfAid() 발동 $i =====');
    print('${cleric.hp}, ${cleric.mp}');
  }

  for (int i = 0; i < 3; i++) {
    print('===== pray() 발동 $i =====');
    int recoveryMp = cleric.pray(5);
    print('${cleric.hp}, ${cleric.mp}, 회복량: $recoveryMp');
  }
}