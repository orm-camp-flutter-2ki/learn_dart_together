import 'package:test/test.dart';
import '../../240312/animal/bird.dart';
import '../../240312/animal/cat.dart';
import '../../240312/animal/dog.dart';

void main() {
  test('Animal Sound Test', () {
    Dog dog = Dog('a', '멍멍');
    Cat cat = Cat('a', '야옹');
    Bird bird = Bird('c', '짹짹');

    dog.makeSound();
    dog.move();
    cat.makeSound();
    cat.move();
    bird.makeSound();
    bird.move();
  });
}
