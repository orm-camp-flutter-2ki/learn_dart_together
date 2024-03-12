import 'package:learn_dart_together/24_03_12/animal.dart';

class Bird extends Animal {
  String _bill;

  Bird(super.type, super.sound, {required String bill}) : _bill = bill;

  void layEgg() {
    print('알 낳는다...');
  }
}
