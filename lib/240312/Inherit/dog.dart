import 'animal.dart';

class Dog extends Animal {
  Dog(super.type, super.sound);

  @override
  void move() {
    print('네발로 빠르게 이동');
  }
}
