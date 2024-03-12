/*
대한민국의 도시 이름 모음 (순서 상관 없음) = set
10명 학생의 시험 점수 = map
대한민국의 도시별 인구수 (순서 상관 없음) = list
*/

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

void main() {
  List<Person> people = [Person('홍길동', 20), Person('한석봉', 25)];

  for (var person in people) {
    print("${person.name}의 나이는 ${person.age}살");
  }
}
