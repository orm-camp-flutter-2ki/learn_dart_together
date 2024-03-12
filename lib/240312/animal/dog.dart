import 'package:learn_dart_together/240312/animal/animal.dart';

class Dog extends Animal {
  Dog(super.type, super.sound);

  @override
  void move() {
    print('네발로');
    super.move();
  }
}
