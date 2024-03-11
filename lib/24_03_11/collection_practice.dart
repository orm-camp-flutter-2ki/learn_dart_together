import 'package:learn_dart_together/24_03_11/person.dart';

// 연습 문제 1
// 대한민국의 도시 이름 모음
Set<String> cities = {};

//10명 학생의 시험점수
// 점수만 필요
List<int> scores = [];
// 학생이름과 매칭 필요
Map<String, int> scoreByName = {};

// 대한민국의 도시별 인구수
Map<String, int> populationByCity = {};

void main() {
  var person1 = Person(name: "홍길동", birthYear: 2004);
  var person2 = Person(name: "한석봉", birthYear: 1999);

  // 연습 문제2
  List<Person> personList = [];
  personList.add(person1);
  personList.add(person2);
  for (var element in personList) {
    print(element.age);
  }

  // 연습 문제3
  Map<String, int> ageByName = {};
  for (var element in personList) {
    ageByName[element.name] = element.age;
  }

  for (var element in ageByName.entries) {
    print("${element.key}의 나이는 ${element.value}살");
  }
}
