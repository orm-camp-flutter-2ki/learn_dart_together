import 'person.dart';

void main() {
  Person person1 = Person('홍길동', 40);
  print(person1);

  /**
   * output
   * Person{name: 홍길동, age: 40}
   *
   * toString 을 오버라이드 하지 않았을 때 "Instance of Person" 이라는 출력결과
   */
}