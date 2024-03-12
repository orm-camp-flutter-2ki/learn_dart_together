class Person {
  String name;
  int age;

  Person({required this.name, required this.age}) {
    print('Person 클래스의 생성자를 호출');
  }

  run() {
    print('사람이 달립니다.');
  }
}

class Male extends Person {
  String gender = '남성';

  Male({required super.name, required super.age}) {
    print('Male 클래스의 생성자를 호출');
  }

  @override
  run() {
    print('이름이 ${super.name} 인 남성이 달립니다.');
  }
}

void main() {
  final Male man = Male(name: '슈퍼맨', age: 200);
}