import 'package:learn_dart_together/240307/hero.dart';

void main() {
  // 내부적으로 주소
  final hero1 = Hero(name: '홍길동', hp: 100);
  final hero2 = hero1;
  hero2.hp = 200;

  print(hero1.hp);
}
