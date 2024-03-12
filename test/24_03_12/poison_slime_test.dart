import 'package:learn_dart_together/24_03_11/wand.dart';
import 'package:learn_dart_together/24_03_11/wizard.dart';
import 'package:learn_dart_together/24_03_12/Slime.dart';
import 'package:learn_dart_together/24_03_12/poison_slime.dart';
import 'package:test/test.dart';

void main() {
  group('poisonSlime 클래스', () {
    group('생성자는', () {
      test('suffix 속성을 받아서 할당한다.', () {
        // Given
        String suffix = 'A';

        // When
        Slime slime = PoisonSlime(suffix);

        // Then
        expect(slime.suffix, equals(suffix));
      });
    });

    group('attack 메소드는', () {
      test('특정 객체를 공격할때 독 충전량이 남아있으면 -10 + 상대체력 / 5 만큼 깎는다.', () {
        // Given
        String suffix = 'A';
        PoisonSlime slime = PoisonSlime(suffix);
        int wizardHp = 100;
        Wizard wizard = Wizard(
            name: '마법사',
            hp: wizardHp,
            mp: 10,
            wand: Wand(name: '완드이름', power: 0.5));

        // When
        slime.attack(wizard);

        // Then
        expect(wizard.hp, equals(wizardHp - (10 + ((wizardHp - 10) ~/ 5))));
      });

      test('특정 객체를 공격할때 독 충전량이 남아있지 않다면 -10 만큼만 깎는다.', () {
        // Given
        String suffix = 'A';
        PoisonSlime slime = PoisonSlime(suffix);
        int wizardHp = 150;
        Wizard wizard = Wizard(
            name: '마법사',
            hp: wizardHp,
            mp: 10,
            wand: Wand(name: '완드이름', power: 0.5));

        // When
        slime.attack(wizard);
        slime.attack(wizard);
        slime.attack(wizard);
        slime.attack(wizard);
        slime.attack(wizard);
        wizardHp = wizard.hp;
        slime.attack(wizard);

        // Then
        expect(wizard.hp, equals(wizardHp - 10));
      });
    });
  });
}
