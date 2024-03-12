import 'package:learn_dart_together/24_03_12/animal/animal.dart';

class Dog extends Animal{
  Dog(super.type, super.sound);

  void barks() {
    print('$type가 $sound하고 짖는다');
  }
}

void main() {
  Dog dog = Dog('강아지', '멍멍');
  dog.barks();
}