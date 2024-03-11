import 'package:learn_dart_together/240311/wand.dart';
import 'package:learn_dart_together/240311/wizard.dart';
import 'package:test/test.dart';

void main() {
  test('Wizard,wand test(1-2)', () {
    Wizard wizard = Wizard(name: 'name', hp: 50, mp: 10, wand: Wand(name: '마법봉', power: 20));

    wizard.hp = 10;

    expect(wizard.hp, 10);
  });
  // setter로도 테스트 필요해야함...
  test('Wizard 이름 3자 이상 검사 테스트(1번)', () {
    // Wizard wizard = Wizard(name: '두자', hp: 100, mp: 10, wand: Wand(name: '마법봉', power: 10));
    //Wizard wizard = Wizard(name: '세글자', hp: 100, mp: 10, wand: Wand(name: '두자', power: 10));
    Wizard wizard = Wizard(name: '세글자', hp: 100, mp: 10, wand: Wand(name: '세글자', power: 10));
  });
  test('지팡이 마력 범위 테스트 (2번)', () {
    //   Wizard wizard = Wizard(name: '세글자', hp: 100, mp: 10, wand: Wand(name: '마법봉', power: 105));
    // Wizard wizard = Wizard(name: '세글자', hp: 100, mp: 10, wand: Wand(name: '마법봉', power: 0.3));
    Wizard wizard = Wizard(name: '세글자', hp: 100, mp: 10, wand: Wand(name: '마법봉', power: 1));
  });
  test('마법사의 지팡이 null 검사 테스트 (3번)', () {
    //Wizard wizard = Wizard(name: '세글자', hp: 100, mp: 10, wand: null);
  });
  test('Wizard mp 0 이상 검사 테스트(4번)', () {
    // Wizard wizard = Wizard(name: '세글자', hp: 100, mp: -10, wand: Wand(name: '마법봉', power: 10));
    Wizard wizard = Wizard(name: '세글자', hp: 100, mp: 10, wand: Wand(name: '마법봉', power: 10));
  });
  test('마법사의 HP 음수가 되는 상황', () {
    Wizard wizard = Wizard(name: '세글자', hp: -10, mp: 10, wand: Wand(name: '마법봉', power: 10));
    print(wizard.hp);
  });
}
