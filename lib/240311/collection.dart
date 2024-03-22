// 연습문제1 다음 정보를 저장하기 좋은 컬렉션을 List, Set, Map 중 고르시오

// 대한민국의 도시 이름 모음 (순서 상관 없음) Set
// 10명 학생의 시험 점수 Map
// 대한민국의 도시별 인구수 (순서 상관 없음) List

//연습문제 2

class Person {
  String name;

  Person(this.name);
}

Person hong = Person('홍길동');
Person han = Person('한석봉');

void main() {
  // List<Person> people = [];
  // people.add(hong);
  // people.add(han);

  for (var element in person.entries) {
    print('${element.key}의 나이는 ${element.value}살');
  }
}

Map<String, dynamic> person = {
  hong.name: '20',
  han.name: '25',
};
