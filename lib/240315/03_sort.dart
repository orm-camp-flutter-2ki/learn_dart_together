import 'package:learn_dart_together/240307/hero.dart';

void main() {
  final names = ['bbb', 'aaa', 'ccc'];

  Comparable comparable = 'bbb';

  int value = Comparable.compare('bbb', 'bbb');

  names.sort();

  names.sort((a, b) => a.compareTo(b) * -1);
  // (bbb, aaa)

  print(names);

  final numbers = [1, 2, 5, 3, 2];

  // numbers.sort((a, b) {
  //   if (a < b) {
  //     return -1;
  //   } else if (a > b) {
  //     return 10033;
  //   }
  //   return 0;
  // });

  numbers.sort((a, b) => a.compareTo(b) * -1);
  // 1, 2, 5, 3, 2
  // (1, 2)
  // 1, 2, 5, 3, 2
  // 1, (2, 5), 3, 2
  // 1, 2, (5, 3), 2
  // 1, 2, 3, (5, 2)
  // 1, 2, 3, 2, 5
  // 1, (2, 3), 2, 5
  // 1, 2, (3, 2), 5
  // 1, 2, 2, 3, 5

  // 내림차순 정렬 5, 4, 3, 2, 1
  print(numbers);

  print(numbers.reversed);

  // 내림차순 (안변했다)
  // 오름차순 (변했다)
  print(numbers);


  // 정렬 대상이 Comparable 인터페이스를 구현하거나
  final heroes = [
    Hero(name: 'name3', hp: 100),
    Hero(name: 'name2', hp: 120),
    Hero(name: 'name1', hp: 130),
  ];

  // 이름 내림차순
  heroes.sort();

  print(heroes);



  // 런타임에 내가 원하는대로 정렬하고 싶을 때
  // hp 오름차순
  heroes.sort((a, b) => a.hp.compareTo(b.hp));
  print(heroes);

  // hp 내림차순
  heroes.sort((a, b) => -a.hp.compareTo(b.hp));
  print(heroes);
}