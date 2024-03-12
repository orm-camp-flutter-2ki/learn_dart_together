import 'animal.dart';

class Dog extends Animal {
  final String name;

  Dog({
    required super.species,
    required super.sound,
    required super.mainLiving,
    required this.name
  });

  void walk(String area) {
    print('$area 를 산책중');
  }

  void bark(int count) {
    for (var i = 0; i < count; i++) {
      print(sound);
    }
  }
}