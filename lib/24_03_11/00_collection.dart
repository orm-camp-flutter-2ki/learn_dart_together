import 'package:learn_dart_together/24_03_11/01_person.dart';

// 1) List
// 2) Map
// 3) Set

void main() {
  List<Person> people = [
    Person('홍길동', 2004),
    Person('한석봉', 1999),
  ];

  Map<String, int> personMap = {};

  for (final p in people) {
    personMap[p.name] = p.age;
    print(p.name);
  }
  for (final person in personMap.keys) {
    print('$person의 나이는 ${personMap[person]}살');
  }
}
