import 'package:learn_dart_together/24_03_11/person.dart';

/// 컬렉션 관련 문제를 풀이합니다.
void main() {
/// [연습문제1] 다음 정보를 저장하기 좋은 컬렉션을 List, Set, Map 중 고르시오

/// 대한민국의 도시 이름 모음 (순서 상관 없음)
// 도시 이름은 중복되지 않는 고유의 값이고 순서도 상관 없기 때문에 Set이 적합하다.

/// 10명 학생의 시험 점수
// 순서가 있고 중복 될 수 있기 때문에 List가 적합하다.

/// 대한민국의 도시별 인구수 (순서 상관 없음)
// 순서가 상관이 없고 도시 이름과 인구수가 한 쌍으로 된 데이터를 저장해야 하기 때문에 Map이 적합하겠다.



/// [연습문제2] 다음을 수행하는 코드를 작성하시오.
/// 이름을 가지는 Person 클래스를 작성하시오. Person 은 반드시 이름을 포함해야 합니다.
/// 이름이 ‘홍길동', ‘한석봉' 인 Person 인스턴스를 생성하고, List에 담습니다.
/// List에 담긴 모든 Person 인스턴스의 이름을 표시하시오.

  Person gilDong = Person(name: '홍길동', birthYear: 2004);
  Person seokBong = Person(name: '한석봉', birthYear: 1999);

  List<Person> personList = [gilDong, seokBong];

  for (final person in personList) {
    print('${person.name}');
  }

/// [연습문제3]
/// 연습문제 2 에서 작성한 Person 클래스로 생성한 ‘홍길동’, ‘한석봉'의 나이를 각각 20, 25살 이라고 할 때,
/// 이름과 나이를 쌍으로 적당한 컬렉션에 넣습니다.
/// 그 다음, 컬렉션에 저장한 값을 하나씩 다음과 같이 출력합니다.
/// “홍길동의 나이는 20살”
/// “한석봉의 나이는 25살”

  Map<String, int> personAges = {
    gilDong.name: gilDong.age,
    seokBong.name: seokBong.age
  };

  personAges.entries.forEach((element) {
    print('${element.key}의 나이는 ${element.value}살');
  });


}
