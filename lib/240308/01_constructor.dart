class Person {
  // 생성자를 작성하지 않아도 기본 생성자는 있다고 본다.
  // Person();

  String name;
  int age;
  Car? car;

  Person({this.name = '홍길동', this.age = 20, this.car});
}

class Car {}

void main() {
  final person = Person();
  final car = Car();

  // Person 의 생성자는 몇개가 가능할까? -> 8개
  final person1 = Person(name: '홍길동', age: 20, car: car);
  final person2 = Person(name: '홍길동', age: 20);
  final person3 = Person(name: '홍길동', car: car);
  final person4 = Person(age: 20, car: car);
  final person5 = Person(name: '홍길동');
  final person6 = Person(age: 20);
  final person7 = Person(car: car);
  final person8 = Person();

  /**
   * Person 클래스의 필드는 name, age 필수이고, car 필드가 nullable 이다
   * Person의 생성자에서 모든 필드는 named parameter 로 되어있음
   * name, age 필드는 필수이지만 기본값이 할당되어있기 때문에 생성자에서 값이 없어도 됨
   * car 필드는 nullable 이기 때문에 값이 없어도 됨
   * 따라서, 3개 필드에 대해서 나올수 있는 생성자 경우의 수는 2^3 = 8개
   */

}
