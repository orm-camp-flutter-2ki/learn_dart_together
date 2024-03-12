import 'Animal.dart';

class Dog extends Animal {
  Dog(super.type);

  @override
  void sound() {
    print('으르렁');
  }

  void smell() {
    print('킁킁');
  }
}
