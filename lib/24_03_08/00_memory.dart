import 'package:learn_dart_together/24_03_07/hero.dart';

void main() {
  final hero1 = Hero(name: '홍길동', hp: 50);
  final hero2 = hero1;
  hero2.hp = 10;
  print(hero1.hp);
}
