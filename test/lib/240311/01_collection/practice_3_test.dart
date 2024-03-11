import 'package:learn_dart_together/240311/01_collection/practice_3.dart';
import 'package:test/test.dart';

void main() {
  test('Person test', () {

    String name;
    int age;

    Person hong = Person(name: '홍길동', age: 20);
    Person han = Person(name: '한석봉', age: 25);

    List<Person> people = [];
    people.add(hong);
    people.add(han);

    // 컬렉션 출력
    for( int i = 0; i < people.length; i++ ) {
      name = people[i].name;
      age = people[i].age;

      print('$name의 나이는 $age살');
    }

  });
}