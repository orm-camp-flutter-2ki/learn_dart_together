import 'package:learn_dart_together/240312/animal.dart';

class Dog extends Animal {
  Dog({required super.type, required super.sound});

  String name = '멍멍이';

  @override
  void makesound() {
    super.makesound();
    print('$name이 $sound를 내었다');
  }
}

