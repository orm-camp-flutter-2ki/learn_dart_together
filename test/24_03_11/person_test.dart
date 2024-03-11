import 'package:learn_dart_together/24_03_11/person.dart';
import 'package:test/test.dart';

void main() {
  test('Person get age', () {
      Person howard = Person('Howard', 1989);

      expect(howard.age, 35);
  });

  test('Change person name', () {
    Person howard = Person('Howard', 1989);
    // howard.name = 'Tom';

    expect(howard.name, 'Howard');
  });

  test('Person Collection print', () {
    List<Person> people = [];

    Person honGilDong = Person('홍길동', 2004);
    Person hanSeokBong = Person('한석봉', 1999);

    people.add(honGilDong);
    people.add(hanSeokBong);

    people.forEach((element) {
      print(element.name);
    });
  });

  test('PersonInfo save to Collection and print name, age', () {
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