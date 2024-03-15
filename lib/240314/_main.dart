import 'package:dart_cli_practice/240307/slime.dart';
import 'package:dart_cli_practice/240311/wand.dart';
import 'package:dart_cli_practice/240313/00_abstract_class.dart';
import 'package:dart_cli_practice/240314/wizard.dart';

import 'monster.dart';

void main() {
  Wand wand = Wand('지팡이', 80);
  Wizard wizard = Wizard(name: '마법사', hp: 100, mp: 50, wand: wand);
  Slime slime = Slime(suffix: 'A');

  Character character = wizard; // 할당 불가능, 할당 가능한다고 가정했을 떄 ->

  /**
   * fireball() 왜 안되는 걸까
   *
   * line:11 컴파일러가 Character 객체를 생성할 때
   * 이미 생성되어 있는 wizard 객체의 메소드까지 확인하지 않고
   * character 에 assign 되는 wizard 객체가 Character 클래스의 자식클래스 인지만
   * 검사하여 assign 해주기 때문에 assign 이 되지만 (실제로는 IDE에서 차단)
   * line:24 에서 실제로 메소드를 사용하려고 하면 Character 클래스에는
   * fireball 메소드가 없어서 호출이 불가능 한 것이다
   */

  wizard.attack(slime);
  wizard.fireball(slime); // 이 메소드 호출 불가능

  Monster monster = Slime(suffix: 'B');

  slime.run();
  monster.run();
}