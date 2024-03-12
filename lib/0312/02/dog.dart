import 'animal.dart';

class Dog extends Animal {

  Dog(super.type, super.sound, super.leg);

  void wagTail() {
    print('${super.type}가 꼬리를 흔든다.');
  }
}