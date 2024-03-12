import 'dart:convert';

class Person {
  final String name;
  final int birthYear;

  // int get age {
  //   return DateTime.now().year - birthYear;
  // }
  int get age => DateTime.now().year - birthYear; // 위와 같은 코드


  Person(this.name, this.birthYear);
  set age(int value) {
    // TODO: implement set
    throw Exception('데이터를 수정할 수 없습니다');
  }
}

