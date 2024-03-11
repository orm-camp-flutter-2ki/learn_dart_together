//연습문제 2 에서 작성한 Person 클래스로 생성한 ‘홍길동’, ‘한석봉'의 나이를 각각 20, 25살 이라고 할 때, 이름과 나이를 쌍으로 적당한 컬렉션에 넣습니다.
// 그 다음, 컬렉션에 저장한 값을 하나씩 다음과 같이 출력합니다.
// “홍길동의 나이는 20살”
// “한석봉의 나이는 25살”
import 'package:learn_dart_together/240311/person collection.dart';
import 'package:test/test.dart';

void main() {
  test('Person test', () {
    String name;
    int age;

    Person name1 = Person(name: '홍길동', age: 20);
    Person name2 = Person(name: '한석봉', age: 25);

    List<Person> people = [];
    people.add(name1);
    people.add(name2);

    for (int i = 0; i < people.length; i++) {
      name = people[i].name;
      age = people[i].age;

      print('$name의 나이는 $age살');
    }
  });
}
