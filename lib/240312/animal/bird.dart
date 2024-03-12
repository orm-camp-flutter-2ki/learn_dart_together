import 'package:learn_dart_together/240312/animal/animal.dart';

class Bird extends Animal {
  Bird(super.type, super.sound);

  @override
  void move() {
    print('하늘로');
    super.move();
  }
}
