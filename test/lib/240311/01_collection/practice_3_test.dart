import 'package:learn_dart_together/240311/01_collection/practice_3.dart';
import 'package:test/test.dart';

void main() {

  Map<String, int> practiceThird = {};

  test(('이름과 나이를 컬렉션에 담는다'), () {

    // Given(준비)
    Person hong = Person(name: '홍길동', age: 20);
    Person han = Person(name: '한석봉', age: 25);


    // When(실행)
    List<Person> people = [];
    people.add(hong);
    people.add(han);


    for( var element in people ) {
      practiceThird[element.name] = element.age;
    }

    expect(practiceThird, isNotNull);

  });


  test('컬렉션에 저장한 값을 출력한다.', () {

    String name;
    int age;

    for( var element in practiceThird.entries ) {
      name = element.key;
      age = element.value;

      print('$name의 나이는 $age살');
    }

  });

}