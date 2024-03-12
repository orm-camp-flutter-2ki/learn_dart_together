class Person {
  final String name;

  Person(this.name);
}

void main() {
  // Person 인스턴스 생성 및 List에 담기
  List<Person> persons = [
    Person('홍길동'),
    Person('한석봉'),
  ];

  // List에 담긴 모든 Person 인스턴스의 이름 출력
  persons.forEach((person) {
    print(person.name);
  });
}
