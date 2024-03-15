import 'package:learn_dart_together/240307/hero.dart';
import 'package:learn_dart_together/240307/sword.dart';

void main() {
  Hero hero = Hero(name: '나영웅', hp: 100, sword: Sword(name: '불의 검', damage: 15));
  print(hero.toString());
}