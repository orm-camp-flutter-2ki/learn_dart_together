import 'package:learn_dart_together/24_03_12/practice_04/animal.dart';

class Cat extends Animal {
  String name;

  Cat({
    required super.type,
    required super.sound,
    required this.name,
  });

  void meow() {
    print('meow!');
  }
}
