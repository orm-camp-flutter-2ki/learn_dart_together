class Person {
  final String name;
  final int birthYear; //입력 받아야되는 값. 입력받을 필요가 있으면 private

  Person({
    required this.name,
    required this.birthYear, //네임드 파라미터/
  });

  // Person(
  //   this.name,
  //   this.birthYear,
  // );

  int get age {
    return DateTime.now().year - birthYear; //연산해서 리턴해주는 식. 메서드 같이 동작함.
  }
}

void main() {
  Person person1 = Person(name: '한정은', birthYear: 1998);
  // Person person2 = Person(name, birthYear);
  print(person1.age);
}

// Person 클래스를 작성하시오.
//
// 이름과 태어난 해를 생성자로 받는다 (name, birthYear)
// 이름과 태어난 해는 한번 정해지면 수정이 불가능하다.
// age 프로퍼티를 통해 나이를 제공하지만, 임의로 수정은 불가능하다.
// 나이 계산은 올해년도에서 birthYear 년도를 뺀 값을 리턴한다
// 현재 시간과 날짜는 DateTime 클래스를 활용하면 얻을 수 있다
// https://api.dart.dev/stable/3.3.1/dart-core/DateTime-class.html
