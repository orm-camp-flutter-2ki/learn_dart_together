import 'package:learn_dart_together/240309/wand.dart';
import 'package:learn_dart_together/240309/wizard.dart';
import 'package:test/test.dart';

main() {
  group('Wizard', () {
    test('MP가 음수일 때, 0으로 초기화되는지', () {
      // given when
      final wand = Wand(name: 'name', power: 10);
      final wizard = Wizard(name: 'name', hp: 50, mp: -100, wand: wand);

      // then
      expect(wizard.mp, 0);
    });
  });
}
