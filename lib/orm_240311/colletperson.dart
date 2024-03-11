class Person {
  String name;

  Person({required this.name});
}

void main() {
  Person person01 = Person(name: '홍길동');
  Person person02 = Person(name: '한석봉');
  List<Person> persons = [
    person01,
    person02,
  ];

  print(person01.name);
// for (int i = 0; i <persons.length; i++){
//   print(persons[i]);
// }

  print(persons);
}
