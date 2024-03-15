import 'package:learn_dart_together/240307/hero.dart';
import 'package:learn_dart_together/240307/sword.dart';

void main() {
  Hero hero = Hero(
    name: 'asdfasd',
    hp: 333,
    sword: Sword(name: '불의검', damage: 10),
  );

  print(hero.toString());
}
