import 'package:learn_dart_together/24_03_12/animal/animal.dart';

class Bird extends Animal{
  Bird(super.type, super.sound);

  void chirps() {
    print('$type가 $sound하고 운다');
  }
}

void main() {
  Bird bird = Bird('참새', '짹짹');
  bird.chirps();
}