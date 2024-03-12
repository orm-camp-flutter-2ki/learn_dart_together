import 'hero.dart';
import 'wand.dart';

class Wizard {
  String name;
  int hp;
  Wand? wand;

  Wizard({
    required this.name,
    required this.hp,
  });

  void heal(Hero hero) {
    hero.hp += 10;
  }

  // 마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다


  // 지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
  // 마법사의 지팡이는 null 일 수 없다.
  // 마법사의 MP는 0 이상이어야 한다.
  // HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)

}
