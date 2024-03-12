import 'package:learn_dart_together/24_03_12/animal.dart';

class Cat extends Animal {
  Cat(super.type);

  @override
  void sound() {
    print('냐옹');
  }

  void push() {
    print('꾹꾹 눌렀습니다.');
  }
}
