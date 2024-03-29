// 연습문제1. 다음 정보를 저장하기 좋은 컬렉션을 List,Set,Map 중 고르시오.
// 1) 대한민국의 도시 이름 모음 (순서 상관 없음) => Set why? 순서 상관 없고 빠르기 때문.
// 2) 10명 학생의 시험 점수 => Map why? 키와 값으로 구성 가능.
// 3) 대한민국의 도시별 인구수 (순서 상관 없음) => Map why? 키와 값으로 구성 가능.

void main() {
  Person person1 = Person('홍길동');
  Person person2 = Person('한석봉');

  //연습문제2
  List lists = [];
  lists.add(person1);
  lists.add(person2);

  for (int i = 0; i < lists.length; i++) {
    print(lists[i].name);
  }
  // for(final list in lists){
  //   print(list.name);
  // }
  // lists.forEach((element) {
  //   print(element.name);
  //   }
  // );

  //연습문제3
  List<Map<String, dynamic>> map = [
    {'name': person1.name, 'age': 20},
    {'name': person2.name, 'age': 25},
  ];

  for (int i = 0; i < map.length; i++) {
    print('${map[i]['name']}의 나이는 ${map[i]['age']}살');
  }
  // for(final item in map){
  //   print('${item['name']}의 나이는 ${item['age']}살');
  // }
  // map.forEach((element) {
  //   print('${element['name']}의 나이는 ${element['age']}살');
  // });
}

class Person {
  String name;

  Person(this.name);
}
