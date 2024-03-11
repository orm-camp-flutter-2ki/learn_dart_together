import 'package:dart_cli_practice/240307/cleric.dart';
import 'package:test/test.dart';

void main() {
  test('Cleric teset', () {
    // Give(준비)
    Cleric cleric = Cleric("아서스", hp: 45);

    // when(실행)
    cleric.selfAid();

    // then(검증)
    expect(cleric.hp, equals(Cleric.maxHp));
  });
}