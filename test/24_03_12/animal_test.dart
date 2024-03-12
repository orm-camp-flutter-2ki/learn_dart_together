import 'package:learn_dart_together/24_03_12/bird.dart';
import 'package:learn_dart_together/24_03_12/cat.dart';
import 'package:learn_dart_together/24_03_12/dog.dart';
import 'package:test/scaffolding.dart';

void main(){

  test('Animal Test', () {

  Cat cat = Cat('고양이');
  Dog dog = Dog('개');
  Bird bird = Bird('새');

  print(cat.type);
  cat.sound();
  print(dog.type);
  dog.sound();
  print(bird.type);
  bird.sound();




  });
}