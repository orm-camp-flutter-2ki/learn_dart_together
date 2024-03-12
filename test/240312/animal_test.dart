import 'package:learn_dart_together/240312/practice4/bird.dart';
import 'package:learn_dart_together/240312/practice4/cat.dart';
import 'package:learn_dart_together/240312/practice4/dog.dart';
import 'package:test/test.dart';

void main() {
  test('Animal Test', () {
    Dog dog = Dog(name: '멍멍이', type: '개', sound: '멍멍');
    Cat cat = Cat(name: '나비', type: '고양이', sound: '냥냥');
    Bird bird = Bird(name: '짹짹이', type: '참새', sound: '짹짹쨱');

    dog.makeSound();
    cat.makeSound();
    bird.makeSound();
  });
}