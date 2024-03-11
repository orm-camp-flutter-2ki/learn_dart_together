class Person {
  String name;
  int age;

  Person(this.name, this.age);

  // Person 객체를 Map으로 변환하는 메서드
  Map<String, dynamic> toMap() {
    return {'name': name, 'age': age};
  }
}

void main() {
  // Person 객체 생성
  Person person = Person('John', 30);

  // Person 객체를 Map으로 변환하여 출력
  var map = person.toMap();
  map.forEach((key, value) {
    print('$key의 값은 $value 입니다.');
  });
}