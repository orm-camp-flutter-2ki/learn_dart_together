import 'animal.dart';

class Bird extends Animal {
  Bird(super.type, super.sound);

  @override
  void move() {
    print('네발로 빠르게 이동');
  }
}
