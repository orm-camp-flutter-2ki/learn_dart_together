// 이름과 태어난 해를 생성자로 받는다 (name, birthYear)
// 이름과 태어난 해는 한번 정해지면 수정이 불가능하다.
// age 프로퍼티를 통해 나이를 제공하지만, 임의로 수정은 불가능하다.
// 나이 계산은 올해년도에서 birthYear 년도를 뺀 값을 리턴한다.
// 현재 시간과 날짜는 DateTime 클래스를 활용하면 얻을 수 있다.
// https://api.dart.dev/stable/3.3.1/dart-core/DateTime-class.html

class Person {
  final String name;
  final int birthYear;

  Person({required this.name, required this.birthYear});

  int get age {
    return DateTime.now().year - birthYear;
  }


}
