import 'animal.dart';

class Cat extends Animal {

  Cat(super.type, super.sound, super.leg);

  void groom() {
    print('${super.type}가 털을 정돈한다.');
  }
}