import 'package:learn_dart_together/240311/person.dart';
import 'package:test/test.dart';

void main() {
  /// 연습문제 1
  /// 1) 대한민국의 도시 이름 모음 (순서 상관 없음)
  /// - 도시 이름 외 도시 번호를 key로 잡는 경우 중복 불가하지만 검색 속도 빠른 Set
  /// 그렇지 않으면 도시 이름 중복될 수 있으므로 List
  /// 2) 10명 학생의 시험 점수
  /// - 학생 이름 외  학번을 key로 잡는 경우 중복 불가하지만 검색 속도 빠른 Set
  /// 그렇지 않으면 학생 이름 중복될 수 있으므로 List
  /// 3) 대한민국의 도시별 인구수 (순서 상관 없음)
  /// - 도시 이름 외 도시 번호를 key로 잡는 경우 중복 불가하지만 검색 속도 빠른 Set
  /// 그렇지 않으면 도시 이름 중복될 수 있으므로 List
  test('Person(collection) test(연습문제2, 3)', () {
    // 연습문제 2
    // 문제 1)
    Person person1 = Person('홍길동', 20);
    Person person2 = Person('한석봉', 25);
    // 문제 2)
    List<Person> personList = [
      person1,
      person2,
    ];

    // 문제3
    for (var person in personList) {
      print(person.name);
    }
    // 연습문제 3
    Map<String, int> personMap = {};
    for (int i = 0; i < personList.length; i++) {
      personMap[personList[i].name] = personList[i].age;
    }
    for (int i = 0; i < personMap.length; i++) {
      print('${personMap.keys.toList()[i]}의 나이는 ${personMap.values.toList()[i]}살');
    }
  });
}
