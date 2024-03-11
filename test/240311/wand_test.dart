import 'package:learn_dart_together/240311/wand.dart';
import 'package:learn_dart_together/240311/wizard.dart';
import 'package:test/test.dart';


void main() {
  Wand wand1 = Wand(name: 'testwand', power: 0.1); //지팡이 생성자 생성
  Wizard wizard1 = Wizard(name: 'te', hp: 10, mp: 10, wand: wand1); //마법사 생성자 생성
  test('wizard 이름길이 테스트', () {
    wizard1.name = 'd';
  });
  test('wizard hp 테스트', () {
    wizard1.hp = -5;
    print(wizard1.hp);
    expect(wizard1.hp,-3);
  });
  test('wizard mp 테스트', () {
    wizard1.mp = -5;
  });
  test('wand 이름길이 테스트', () {
    wand1.name = 'd';
  });
  test('wand 마력 테스트', () {
    wand1.power = 0.1;
  });
}