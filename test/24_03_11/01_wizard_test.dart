import 'package:learn_dart_together/24_03_11/01_wizard.dart';
import 'package:test/test.dart';

void main() {
  test('wizard test', () {
    Wand wand1 = Wand(name: '지팡이', power: 10.0);
    Wizard wizard1 = Wizard(name: '홍길동', hp: 100, mp: 4, wand: wand1);

    // wand1.power = 0.3;

    // wizard1.hp = -100;   // => wizard 의 HP 가 음수라면 0 으로 초기화
    wizard1.name = 'aaaa'; // => wizard1 의 이름이 2글자 이하라면 exception

    // expect(0, wizard1.hp);
    expect(wizard1.name, 'mama'); // => 기대값과 실제값 비교
    print(wizard1.name);
  });
}
