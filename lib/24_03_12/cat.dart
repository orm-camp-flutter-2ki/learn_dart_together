import 'animal.dart';

class Cat extends Animal {
  bool _tail;

  Cat(super.type, super.sound, {required bool tail}) : _tail = tail;

  void meow() {
    print(sound);
  }
}
