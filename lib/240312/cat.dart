import 'animal.dart';

class Car extends Animal {
  Car({required super.name, required super.type, required super.sound});

  void entersBox() {
    print('$type $name 이/가 상자에 들어갑니다.');
  }

  void beingCute() {
    print('$type $name 은/는 귀여운 척을 합니다.');
  }
}