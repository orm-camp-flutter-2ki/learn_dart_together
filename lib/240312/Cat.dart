import 'package:learn_dart_together/240312/Animal.dart';

class Cat extends Animal {
  Cat({required super.type, required super.sound});

  String name = '야옹이';

  @override
  void makesound() {
    super.makesound();
    print('$name이 $sound를 내었다');
  }
}

void main() {
  Cat cat = Cat(type: '포유류', sound: '야옹');
  cat.makesound();
}
