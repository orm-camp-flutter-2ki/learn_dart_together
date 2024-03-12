import 'animal.dart';

class Bird extends Animal {
  Bird(super.type);

  @override
  void sound() {
    print('짹짹');
  }

  void fly() {
    print('푸드득');
  }
}
