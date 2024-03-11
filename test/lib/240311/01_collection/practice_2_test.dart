import 'package:learn_dart_together/240311/01_collection/practice_2.dart';
import 'package:test/test.dart';

void main() {
  test('Person test', () {

    Person hong = Person(name: '홍길동');
    Person han = Person(name: '한석봉');

    List<Person> people = [];
    people.add(hong);
    people.add(han);

    // iterator 활용
    final iterator = people.iterator;
    while( iterator.moveNext() ) {
      print(iterator.current.name);
    }

  });
}