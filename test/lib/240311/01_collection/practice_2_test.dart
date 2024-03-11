import 'package:learn_dart_together/240311/01_collection/practice_2.dart';
import 'package:test/test.dart';

void main() {

  // Given(준비)
  String hong = '홍길동';
  String han = '한석봉';


  test('Person 클래슨느 반드시 이름을 포함한다.', () {

    // When(실행)
    Person person1 = Person(name: hong);
    Person person2 = Person(name: han);

    // Then(검증)
    expect(person1, isNotNull);
    expect(person2, isNotNull);
  });


  test('List 에 담긴 Person 인스턴스의 이름을 모두 표시하시오.', () {

    // When(실행)
    Person person1 = Person(name: hong);
    Person person2 = Person(name: han);

    List<Person> peopleList = [];
    peopleList.add(person1);
    peopleList.add(person2);

    // iterator 활용
    final iterator = peopleList.iterator;
    while( iterator.moveNext() ) {
      print('peopleList > ${iterator.current.name}');
    }
  });
}