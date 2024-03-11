import 'package:test/test.dart';
import 'package:learn_dart_together/240311/wand.dart';
import 'package:learn_dart_together/240311/wizard.dart';

void main() {
  //when
  Wand wand1 = Wand(name: 'testwand', power: 0.6);
  Wizard wizard1 = Wizard(10, 10, name: 'testwizard', wand: wand1);

  test('wizard 이름 길이 테스트', () {
    //given
    wizard1.name = '22222d';
  });
  test('wizard hp 테스트', () {
    wizard1.hp = -5;
    expect(wizard1.hp,0);
  });
  test('wizard mp 테스트', () {
    wizard1.mp = 5;
  });
}


