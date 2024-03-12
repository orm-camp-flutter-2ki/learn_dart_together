import 'package:learn_dart_together/240312/practice_4/animal.dart';

class Bird extends Animal{
  Bird(super.type, super.sound);

  void canFly(String type) {
    print("'$type'은/는 날 수 있나요?");
  }
}

void main() {
  Bird penguin = Bird('황제펭귄', '꽈깎');
  penguin.soundIs(penguin.type, penguin.sound);
  penguin.canFly(penguin.type);
}