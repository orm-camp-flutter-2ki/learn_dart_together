import 'package:dart_cli_practice/240311/wand.dart';
import 'package:dart_cli_practice/240311/wizard.dart';

import 'person.dart';

void main() {
  Person person1 = Person('홍길동', 2004);
  Person person2 = Person('한석봉', 1999);

  List<Person> list = [];
  list.add(person1);
  list.add(person2);

  // for
  for (int i = 0; i < list.length; i++) {
    print(list[i].name);
  }

  // for-in
  for (final element in list) {
    print(element.name);
  }

  // forEach
  list.forEach((element) {
    print(element.name);
  });

  List<Map<String, Object>> personList = [];

  for(final element in list) {
    personList.add({
      element.name: element.age
      // 'name': element.name,
      // 'age': element.age
    });
  }
  
  for(final person in personList) {
    person.entries.forEach((element) {
      print('${element.key}의 나이는 ${element.value}');
    });
  }
}