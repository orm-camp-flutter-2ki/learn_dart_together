class Person {
  String _name;
  // int _age;

  Person({
    required String name,
    // required int age,
  })  : _name = name;

  String get name => _name;
  // int get age => _age;
}

void main() {
  Person person01 = Person(name: '홍길동');
  Person person02 = Person(name: '한석봉');
  List<Person> persons = [
    person01,
    person02,
  ];
  // for (int i; persons.length; i++) {
  //   print(persons[i].name);
  // }
for (int i = 0; i <persons.length; i++){
  print(persons[i].name);
}

  // print(persons);
}
