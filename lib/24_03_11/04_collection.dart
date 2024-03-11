import 'package:learn_dart_together/24_03_08/constructor.dart';

/// 연습문제 1
/// 다음 정보를 저장하기 좋은 컬렉션을 List, Set, Map 중 고르시오
///
/// 1. 대한민국의 도시 이름 모음 (순서 상관 없음)
/// - Set : Set이 List보다 훨씬 속도가 빠르기때문에 많으 정보를 저장하기에는 Set이 적당하다. 또한 중복을 허용하지 않기때문에 더 효율적이다.
/// 2. 10명 학생의 시험 점수
/// - Map : 학생이름(key)과 성적(value)의 정보가 함께 필요하기 때문에
/// 3. 대한민국의 도시별 인구수 (순서 상관 없음)
/// - Map : 도시(key)와 인구수(value)의 정보를 효율적으로 저장할 수 있다.

/// 연습문제 2
///다음을 수행하는 코드를 작성하시오.
/// 이름을 가지는 Person 클래스를 작성하시오. Person 은 반드시 이름을 포함해야 합니다.
/// 이름이 ‘홍길동', ‘한석봉' 인 Person 인스턴스를 생성하고, List에 담습니다.
/// List에 담긴 모든 Person 인스턴스의 이름을 표시하시오.

class Person {
  String name;

  // 생성자(이름 반드시 포함)
  Person({required this.name});
}

void main() {
  // Person 인스턴스 생성
  Person person1 = Person(name: '홍길동');
  Person person2 = Person(name: '한석봉');

  // Person 인스턴스를 담을 List
  // List<Person> lists = [person1, person2];

  // for (final list in lists) {
  //   print(list.name);
  // }

  ///연습문제 2 에서 작성한 Person 클래스로 생성한 ‘홍길동’, ‘한석봉'의 나이를 각각 20, 25살 이라고 할 때, 이름과 나이를 쌍으로 적당한 컬렉션에 넣습니다.
  /// 그 다음, 컬렉션에 저장한 값을 하나씩 다음과 같이 출력합니다.
  /// “홍길동의 나이는 20살”
  /// “한석봉의 나이는 25살”

  Map<String, dynamic> personMap = {
    person1.name: '20',
    person2.name: '25',
  };

  personMap.entries.forEach((e) {
    print('${e.key}의 나이는 ${e.value}살');
  });
}
