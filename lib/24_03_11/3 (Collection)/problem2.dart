void main(){

  // 1. 이름을 가지는 Person 클래스 작성
  var person1 = Person('홍길동');
  var person2 = Person('한석봉');

  // 2. List 에 담기
  List<Person> personList = [person1, person2];

  print(personList);

 // 3. List에 담긴 모든 Person 인스턴스의 이름을 표시하시오.
  for (var person in personList) {
    print(person.name);
  }
}

class Person {
  String name;

  Person(this.name);
}

