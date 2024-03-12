import 'package:learn_dart_together/24_03_07/wand.dart';
import 'package:learn_dart_together/24_03_07/wizard.dart';
import 'package:test/test.dart';

void main() {
  test('wizard name length test', () {
    // 1. 3글자 이상
    // given when
    final fireWand = Wand(name: 'fireWand', power: 10.0);
    final wizard = Wizard(name: 'gandalf', hp: 50, mp: 10, wand: fireWand);

    // then
    expect(() => wizard.name = 'vi', throwsException);
  });

  test('wizard mp test', () {
    // 4. mp는 0 이상
    // given when
    final fireWand = Wand(name: 'fireWand', power: 10.0);
    final wizard = Wizard(name: 'gandalf', hp: 50, mp: 10, wand: fireWand);

    // then
    expect(() => wizard.mp = -10, throwsException);
  });

  test('wizard hp test', () {
    // given when
    final fireWand = Wand(name: 'fireWand', power: 10.0);
    final wizard = Wizard(name: 'gandlf', hp: -10, mp: 10, wand: fireWand);

    expect(wizard.hp, equals(0));
  });
}
