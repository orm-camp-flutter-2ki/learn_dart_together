import 'package:learn_dart_together/24_03_12/ex2.animal/animal.dart';

class Bird extends Animal {
  void fly() {
    print('🦅🦅🦅 우왕 하늘을 날 수 있엉 🦅🦅🦅');
  }

  Bird({required super.type, required super.sound});
}