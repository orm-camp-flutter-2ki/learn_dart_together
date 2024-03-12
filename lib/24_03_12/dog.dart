import 'animal.dart';

class Dog extends Animal {
  Dog(super.type);

  bool? trained;

  @override
  void sound() {
    print('왈왈');
  }

  void moveTail() {
    print('꼬리가 움직입니다.');
  }
}
