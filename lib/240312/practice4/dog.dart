import 'package:learn_dart_together/240312/practice4/animal.dart';

class Dog extends Animal {
  Dog({
    required super.name,
    required super.type,
    required super.sound
  });

  @override
  void makeSound() {
    super.makeSound();
    print('$name이/가 "$sound"하고 짖었다.');
  }
}