import 'package:learn_dart_together/240312/animal.dart';

class Cat extends Animal {
  Cat({required super.type, required super.sound});

  String name = '야옹이';

  @override
  void makesound() {
    super.makesound();
    print('$name이 $sound를 내었다');
  }
}
