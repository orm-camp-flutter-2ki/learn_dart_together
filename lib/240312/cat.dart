import 'animal.dart';

class Cat extends Animal {
  Cat(super.type);

  @override
  void sound() {
    print('야옹');
  }

  void sleep() {
    print('드르렁');
  }
}
