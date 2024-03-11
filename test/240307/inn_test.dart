import 'package:learn_dart_together/240307/hero.dart';
import 'package:learn_dart_together/240307/inn.dart';
import 'package:test/test.dart';

void main() {
  test('Inn test', () {
    Inn inn = Inn();
    Hero hero = Hero(name: 'name', hp: 100);

    inn.checkInn(hero);

    expect(hero.hp, 100);
  });

}
