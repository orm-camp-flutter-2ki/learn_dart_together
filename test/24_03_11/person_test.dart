import 'package:learn_dart_together/24_03_11/person.dart';
import 'package:test/test.dart';

void main() {
  test('TEST_PERSON_나이_계산_확인', () {
      Person howard = Person('Howard', 1989);

      expect(howard.age, 35);
  });

  test('TEST_PERSON_LIST_삽입후_이름_출력', () {
    List<Person> people = [];

    Person honGilDong = Person('홍길동', 2004);
    Person hanSeokBong = Person('한석봉', 1999);

    people.add(honGilDong);
    people.add(hanSeokBong);

    for (var element in people) {
      print(element.name);
    }
  });

  test('TEST_PERSON_이름_나이_MAP_저장_출력', () {
    Map<String, int> personInfo = {};

    Person honGilDong = Person('홍길동', 2004);
    Person hanSeokBong = Person('한석봉', 1999);

    personInfo[honGilDong.name] = honGilDong.age;
    personInfo[hanSeokBong.name] = hanSeokBong.age;

    personInfo.forEach((key, value) {
      print('$key의 나이는 $value살');
    });
  });
}