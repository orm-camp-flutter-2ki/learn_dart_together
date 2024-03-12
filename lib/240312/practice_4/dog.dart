import 'package:learn_dart_together/240312/practice_4/animal.dart';

class Dog extends Animal{
  Dog(super.type, super.sound);

  void canRun(String type) {}
  
}

void main() {
  Dog dog = Dog('리트리버', '컹컹');
  dog.canRun(dog.type);
}