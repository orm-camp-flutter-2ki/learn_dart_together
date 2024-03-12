import 'package:learn_dart_together/240312/practice4/animal.dart';

class Bird extends Animal {
  Bird({
    required super.name,
    required super.type,
    required super.sound
  });

  @override
  void makeSound() {
    super.makeSound();
    print('$name이/가 "$sound"하고 울었다.');
  }
}