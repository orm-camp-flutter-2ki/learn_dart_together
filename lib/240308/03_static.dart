import 'package:learn_dart_together/240307/hero.dart';

int heroMoney = 100;

void main() {
  final hero = Hero(name: 'name', hp: 100);

  Hero.money = 200;

  print(Hero.money);

  Hero.setRandomMoney();
}