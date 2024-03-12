class Person {
  final String _name;
  final int _age;

  Person({
    required String name,
    required int age,
  })  : _name = name,
        _age = age;

  String get name => _name;

  int get age => _age;
}

void main() {
  Person person01 = Person(name: '홍길동', age: 20);
  Person person02 = Person(name: '한석봉', age: 25);
  List<Person> persons = [
    person01,
    person02,
  ];
  Map<String, int> age = {'홍길동': 20, '한석봉': 25};

  for (int i = 0; i < persons.length; i++) {
    print('${persons[i].name}의 나이는 ${persons[i].age}살');
  }
  print('${persons[0].name}의 나이는 ${age['홍길동']}살');
  print('${persons[1].name}의 나이는 ${age['한석봉']}살');
}
