import 'package:learn_dart_together/240307/monster.dart';
import 'package:learn_dart_together/240307/slime.dart';
import 'package:learn_dart_together/240314/00_polymorphism.dart';

void main() {
  Slime slime = Slime(100, 11);
  Monster monster = Slime(100, 11);

  slime.run();
  monster.run();

  // Dog dog2 = dog as Dog;
  // dog2.move(10);
  //
  // Movable dog3 = dog2;
  // dog3.move(10);

  Drawable dog = Dog();
  dog.draw();

  if (dog is Dog) {
    Movable dog4 = dog;
    dog4.move(10);
  }
}