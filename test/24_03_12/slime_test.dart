import 'package:learn_dart_together/24_03_11/wand.dart';
import 'package:learn_dart_together/24_03_11/wizard.dart';
import 'package:learn_dart_together/24_03_12/slime.dart';
import 'package:test/test.dart';

void main() {
  group('slime 클래스', () {
    group('생성자는', () {
      test('suffix 속성을 받아서 할당한다.', () {
        // Given
        String suffix = 'A';

        // When
        Slime slime = Slime(suffix);

        // Then
        expect(slime.suffix, equals(suffix));
      });
    });

    group('attack 메소드는', () {
      test('특정 객체를 공격하면 객체의 hp를 10만큼 깎는다.', () {
        // Given
        String suffix = 'A';
        Slime slime = Slime(suffix);
        int wizardHp = 100;
        Wizard wizard = Wizard(name: '마법사', hp: wizardHp, mp: 10, wand: Wand(name: '완드이름', power: 0.5));

        // When
        slime.attack(wizard);

        // Then
        expect(wizard.hp, equals(wizardHp - 10));
      });
    });
  });
}