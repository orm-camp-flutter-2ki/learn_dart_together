import 'animal.dart';

class Bird extends Animal {

  Bird(super.type, super.sound, super.leg);

  void buildNest() {
    print('${super.type}가 둥지를 짓는다.');
  }
}