import 'package:learn_dart_together/24_03_12/practice_04/animal.dart';

class Dog extends Animal {
  String name;

  Dog({
    required this.name,
    required super.type,
    required super.sound,
  });

  void bowWow() {
    print('bow wow!');
  }
}
