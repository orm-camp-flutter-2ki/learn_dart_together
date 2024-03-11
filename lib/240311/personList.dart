import 'package:learn_dart_together/240307_02_%EA%B9%80%EB%AF%BC%EA%B7%9C/01_Hero.dart';

class Person {
  String name;
  int age;

  Person({required this.name, required this.age});
}

void main() {
  List<String> heros = [];

  Person personA = Person(
    name: '홍길도',
    age: 20,
  );
  heros.add(personA.name);

  Person personB = Person(
    name: '한석봉',
    age: 25,
  );
  heros.add(personB.name);

  print(heros);
}
