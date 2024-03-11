import 'package:learn_dart_together/0308/hero.dart';
import 'package:learn_dart_together/0308/inn.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Inn test', () {
    Inn inn = Inn();
    Hero hero = Hero(name: '여관용사', hp: 100);

    inn.checkInn(hero);

    expect(hero.hp, 100);
  });
}
