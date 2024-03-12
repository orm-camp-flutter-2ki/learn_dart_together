import 'package:learn_dart_together/24_03_12/practice_04/animal.dart';

class Bird extends Animal {
  String name;
  String featherColor;

  Bird({
    required super.type,
    required super.sound,
    required this.name,
    required this.featherColor,
  });
}
