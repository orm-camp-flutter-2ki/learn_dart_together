import 'package:learn_dart_together/24_03_12/animal/animal.dart';

class Cat extends Animal{
  Cat(super.type, super.sound);

  void meows() {
    print('$type가 $sound하고 운다');
  }
}

void main() {
  Cat cat = Cat('고양이', '야옹');
  cat.meows();
}