import 'package:learn_dart_together/240307/hero.dart';

void main() {
  String name = '홍길동';
  String hong = name;

  name = '이순신';

  print(name == hong);

  int num = 10;
  int num2 = num;

  num = 20;

  print(num == num2);   // 복사

  Hero hero = Hero(name: 'name', hp: 100);
  Hero hero2 = hero;    // 얕은 복사 shallow copy

  hero.hp = 200;
  // hero = Hero(name: 'name', hp: 100);

  print(hero == hero2);

  // 깊은 복사 deep copy
  Hero clone = Hero(name: hero.name, hp: hero.hp);

  // 완전 쌍둥이 하나 생성
  Hero clone2 = hero.copyWith();

  // 이름 동일, hp 달라
  Hero clone3 = hero.copyWith(hp: 200);

  Hero clone4 = hero.copyWith(name: '홍길동');
  Hero clone5 = hero.copyWith(name: '홍길동', hp: 300);
}
