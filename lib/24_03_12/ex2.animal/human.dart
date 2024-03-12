import 'package:learn_dart_together/24_03_12/ex2.animal/animal.dart';

class Human extends Animal{
  void useLanguage() {
    print('언어로 말을 할 수 있다.');
  }

  Human({required super.type, required super.sound});
}