import 'animal.dart';

class Dolphin extends Animal {
  final String size;

  Dolphin({required super.species, required super.sound, required super.mainLiving, required this.size});

  void jump() {
    print('$species가 점프했다.');
  }
}