void main() {
  List<String> people = []; // list 생성, 이름이기 때문에 String

  // 인스턴스 생성
  Person person1 = Person(name: '홍길동');
  Person person2 = Person(name: '한석봉');

  // list에 요소 추가
  people.add(person1.name);
  people.add(person2.name);

  // map
  Map<String, int> people2 = {person1.name: 20, person2.name: 25};

  // list 출력
  //[1] for i
  print('===== for i 출력 =====');
  for (int i = 0; i < people.length; i++) {
    print(people[i]);
  }

  //[2] for in
  print('===== for in 출력 =====');
  for (final name in people) {
    print(name);
  }

  //[3] forEach
  print('===== forEach 출력 =====');
  people.forEach(print);

  // map 출력
  print('===== map 출력 =====');
  // ()가 같이 출력된다...
  // print('${gildong.keys}의 나이는 ${gildong.values}살');
  // print('${seockbong.keys}의 나이는 ${seockbong.values}살');
  people2.entries.forEach((element) {
    print('${element.key}의 나이는 ${element.value}살');
  });
}

class Person {
  String name;

  Person({required this.name});
}
