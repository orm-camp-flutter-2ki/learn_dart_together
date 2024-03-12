import '../../240312/Bird.dart';
import '../../240312/Cat.dart';
import '../../240312/Dog.dart';

void main() {
  Dog dog = Dog(type: '포유류', sound: '멍멍');
  dog.makesound();
  Cat cat = Cat(type: '포유류', sound: '야옹');
  cat.makesound();
  Bird bird = Bird(type: '조류', sound: '짹짹');
  bird.makesound();
}
