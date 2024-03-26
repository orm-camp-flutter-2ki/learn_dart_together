import 'package:learn_dart_together/240326/01_singleton.dart';

class User {
  final String name;
  final int age;

  const User(this.name, this.age);
}

void main() {
  final user1 = const User('name', 10);
  final user2 = const User('name', 10);

  print(user1.hashCode);
  print(user2.hashCode);

  print(identical(user1, user2));

  final name1 = '홍길동';  // 값 : value
  final name2 = '홍길동';

  print(identical(name1, name2));

  final num1 = 10;    // 값 : value
  final num2 = 10;
  print(identical(num1, num2));
}
