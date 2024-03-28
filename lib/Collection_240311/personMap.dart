class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

void main() {
  List<Map<String, dynamic>> heroList = [];

  Person personA = Person('홍길도', 20);
  Map<String, dynamic> hero1 = {'name': personA.name, 'age': personA.age};

  Person personB = Person('한석봉', 25);
  Map<String, dynamic> hero2 = {'name': personB.name, 'age': personB.age};

  // hero1,2를 List에 추가
  heroList.add(hero1);
  heroList.add(hero2);

  // List 안의 map 순차적으로 출력하기
  for (Map<String, dynamic> heroMap in heroList) {
    String name = heroMap['name']; // Map에서 "name" 키에 해당하는 값 축출 -> 변수지정
    int age = heroMap['age']; // Map에서 "age" 키에 해당하는 값 축출 -> 변수지정

    print('$name의 나이는 $age세입니다.');
  }
}
