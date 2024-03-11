class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

void main() {
  Map<String, dynamic> herosMap = {};

  Person personA = Person('홍길도', 20);
  herosMap['name'] = personA.name;
  herosMap['age'] = personA.age;

  Person personB = Person('한석봉', 25);
  herosMap['name'] = personB.name;
  herosMap['age'] = personB.age;

  print(herosMap.addAll);
}
