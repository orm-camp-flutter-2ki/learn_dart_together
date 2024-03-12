class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

void main() {

  var person1 = Person('홍길동', 20);
  var person2 = Person('한석봉', 25);

  Map<String, int> nameAgeMap = {
    person1.name: person1.age,
    person2.name: person2.age,
  };

  nameAgeMap.forEach((name, age) {
    print('$name의 나이는 $age살');
  });
}