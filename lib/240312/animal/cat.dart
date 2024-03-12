import 'package:learn_dart_together/240312/animal/animal.dart';

class Cat extends Animal {
  Cat(super.type, super.sound);

  @override
  void move() {
    print('네발로 ');
    super.move();
  }
}
