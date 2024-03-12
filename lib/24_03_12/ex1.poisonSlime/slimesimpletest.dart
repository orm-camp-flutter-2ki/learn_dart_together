

import 'package:learn_dart_together/24_03_12/ex1.poisonSlime/poisonslime.dart';

import 'hero.dart';

void main () {
  PoisonSlime poisonSlime = PoisonSlime('달라 붙기');
  Hero lv1Hero = Hero(100, 100);

  for (int i = 0; i < 5; i++){ // 5회 공격 시나리오
    poisonSlime.attack(lv1Hero);
  }
}