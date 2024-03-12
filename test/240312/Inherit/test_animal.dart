import 'package:learn_dart_together/240312/Inherit/animal.dart';
import 'package:learn_dart_together/240312/Inherit/bird.dart';
import 'package:learn_dart_together/240312/Inherit/cat.dart';
import 'package:learn_dart_together/240312/Inherit/dog.dart';

import 'package:test/test.dart';

void main() {
  test('Animal test', () {
    Animal dog = Dog('개', '멍멍');
    Animal cat = Cat('고양이', '야옹');
    Animal bird = Bird('새', '끼룩');
    List<Animal> animal = [dog, cat, bird];

    for (int i = 0; i < animal.length; i++) {
      String sound = animal[i].makeSound();
      animal[i].move();
      if (i == 0) {
        expect(sound, equals('멍멍'));
      } else if (i == 1) {
        expect(sound, equals('야옹'));
      } else if (i == 2) {
        expect(sound, equals('끼룩'));
      }
    }
  });
}
