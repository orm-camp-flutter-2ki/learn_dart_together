import 'package:learn_dart_together/240312/Animal.dart';

class Dog extends Animal {
  Dog({required super.type, required super.sound});

  String name = '멍멍이';

  @override
  void makesound() {
    super.makesound();
    print('$name이 $sound를 내었다');
  }
}

void main() {
  Dog dog = Dog(type: '포유류', sound: '멍멍');
  dog.makesound();
}
