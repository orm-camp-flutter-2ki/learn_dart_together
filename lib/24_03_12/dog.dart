import 'package:learn_dart_together/24_03_12/animal.dart';

class Dog extends Animal {
  bool _tail;
  Dog(super.type, super.sound, {required bool tail}) : _tail = tail;

  void howling() {
    print(sound);
  }
}