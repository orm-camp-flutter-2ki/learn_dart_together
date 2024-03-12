import 'package:learn_dart_together/240307/hero.dart';
import 'package:learn_dart_together/240307/inn.dart';
import 'package:test/test.dart';

void main() {
  test('Inn test', () {
    Inn inn = Inn();
    Hero hero = Hero(name: 'name', hp: 100);
    //Hero hero1 = Hero(name: 'name', hp: -100);
    print(hero.hp);
    inn.checkInn(hero);
    print(hero.hp);

    expect(hero.hp, 100);
  });
}
