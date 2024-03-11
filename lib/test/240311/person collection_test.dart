
import 'package:learn_dart_together/240311/person collection.dart';
import 'package:test/test.dart';

void main() {
  test('Person test', ()
  {
    String name;
    int age;

    Person name1 = Person(name: '홍길동', age: 20);
    Person name2 = Person(name: '한석봉', age: 25);

    List<Person> people = [];
    people.add(name1);
    people.add(name2);

    for( int i = 0; i < people.length; i++ ) {
      name = people[i].name;
      age = people[i].age;

      print('$name의 나이는 $age살');
    }

  });
}