import 'package:learn_dart_together/24_03_07/Hero.dart';
import 'package:learn_dart_together/24_03_08/02_constructor.dart';

void main() {
  List<int> list = [1, 2, 3, 4, 5];
  int value = Comparable.compare(5, 4);
  print(value);
  print(list);
  print(list.reversed);
  print(list);

  final heroes = [
    Hero(name: 'hero1', hp: 100),
    Hero(name: 'hero2', hp: 120),
    Hero(name: 'hero3', hp: 130),
  ];
  heroes.sort();
  print(heroes);

}
