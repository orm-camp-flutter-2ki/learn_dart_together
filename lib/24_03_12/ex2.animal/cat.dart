import 'package:learn_dart_together/24_03_12/ex2.animal/animal.dart';

class Cat extends Animal {
  void grooming() {
    print('🐈🐈🐈 그루밍을 해서 헤어볼을 만들자 🐈🐈🐈');
  }

  Cat({required super.type, required super.sound});
}
