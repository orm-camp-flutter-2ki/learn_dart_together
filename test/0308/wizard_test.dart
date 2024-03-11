import 'package:learn_dart_together/0308/wand.dart';
import 'package:learn_dart_together/0308/wizard.dart';
import 'package:test/scaffolding.dart';

void main() {

  test('마법사와 지팡이 이름 길이 테스트', () {
    // 생성자
    Wand wand01 = Wand(name: 'd', power: 30.3);
    Wizard wizard = Wizard(name: 'd', hp: 40, mp: 10, wand: wand01);

    // 마법사 이름 3글자 이하
    // wizard.name = 'w'; // error
    wizard.name = 'ww'; // error
    // wizard.name = 'ww2'; // not error

  });

  test('마법사 mp 범위 테스트', () {
    // 생성자
    Wand wand02 = Wand(name: 'd', power: 30.3);
    Wizard wizard2 = Wizard(name: 'water stick', hp: 44, mp: 30, wand: wand02);

    wizard2.hp = -19;
    print(wizard2.hp);
    // 마법사의 mp는 0 이상으로 설정해야 한다
    // wizard2.mp = -19; // error
    // wizard2.mp = 0; // not error
    // wizard2.mp = 30; // not error
  });
}