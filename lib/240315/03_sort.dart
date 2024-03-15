import 'package:learn_dart_together/240307/hero.dart';

void main() {
  final numbers = [123, 11, 43, 234, 1];
  numbers.sort();

  print(numbers); // 출력 결과: [1, 11, 43, 123, 234]

  print(numbers.reversed); // 출력 결과: (234, 123, 43, 11, 1)
  // reversed 후의 출력 결과는?
  // 내림차순(안 변했다.)
  // 오름차순(변했다.)
  print(numbers);


  final heroes = [
    Hero(name: 'name3', hp: 100),
    Hero(name: 'name2', hp: 120),
    Hero(name: 'name1', hp: 130),
  ];

  // heroes.sort();
  // print(heroes); // 에러

  // hp 오름차순
  heroes.sort((a, b) => a.hp.compareTo(b.hp));
  print(heroes);

  // hp 내림차순
  heroes.sort((a, b) => a.hp.compareTo(b.hp) * -1);
  print(heroes);


  Hero hero = Hero(name: 'name3', hp: 100);

  // 얕은 복사
  Hero hero2 = hero;

  // 깊은 복사
  Hero clone = Hero(name: hero.name, hp: hero.hp);
}
