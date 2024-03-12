import 'Animal.dart';

class Cat extends Animal {
  Cat(super.type);

  @override
  void sound() {
    print('짹짹');
  }

  void fly() {
    print('푸드득');
  }
}
