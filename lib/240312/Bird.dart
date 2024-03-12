import 'package:learn_dart_together/240312/Animal.dart';

class Bird extends Animal {
  Bird({required super.type, required super.sound});

  String name = '짹짹이';

  @override
  void makesound() {
    super.makesound();
    print('$name이 $sound를 내었다');
  }
}
