void main() {
  Person yejin = Person('예진', 1997);
  print(yejin.age);
}

class Person {
  final String name;
  final int birthYear;

  Person(this.name, this.birthYear);

  int get age {
    return DateTime.now().year - birthYear;
  }
}
//   age => _age 형태로 쓰고 싶다.
//   하지만 초기화를 하라고 오류가 난다. 그렇다면 선언 + 초기화를 안하고 쓸 수 있을까?
//   있다 Why? getter,setter는 필드(변수)가아닌 메서드와 비슷한 녀석이기 때문이다.

//값을 리턴만 한다. age = 10과 같이 수정하지않는다. 따라서 setter가 아닌 getter
//Person yejin = Person('예진',1997); 이때도 결과값을 모른다. (메모리를 잡고있지 않는다)
