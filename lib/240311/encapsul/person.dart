class Person {
  final String name; // 이름 (한 번 정해지면 수정이 불가능, final 사용)
  final int birthYear; // 태어난 해 (한 번 정해지면 수정이 불가능, final 사용)

  Person(this.name, this.birthYear); // 이름과 태어난 해를 생성자로 받는다 (name, birthYear)

  // age 프로퍼티 (화살표 사용)
  int get age => DateTime.now().year - birthYear; // 나이 계산은 올해년도에서 birthYear 년도를 뺀 값을 리턴한다
}

void main() {
  Person person = Person('김하준', 1995); // 이름과 태어난 해를 생성자로 받는다 (name, birthYear)
  print('${person.name}의 나이는 ${person.age}살'); // age 프로퍼티를 통해 나이를 제공하지만, 임의로 수정은 불가능하다.
}