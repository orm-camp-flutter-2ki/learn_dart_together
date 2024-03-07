import 'Slime.dart';
import 'Hero.dart';
import 'Cleric.dart';

void main() {
  Hero hero = Hero('홍길동', 100);

  Slime slime1 = Slime(50, 'A');
  Slime slime2 = Slime(48, 'B');

  Cleric cleric  = Cleric('클레릭');

  // 모험의 시작
  print('[모험을 떠납니다...]');
  hero.attack();
  slime1.run();
  slime2.run();
  hero.run();
  hero.sleep();
  cleric.selfAid();
  cleric.pray(8);
}