import 'package:learn_dart_together/24_03_12/05_animal.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('animal test', () {
    List<Animal> animal = <Animal>[];
    animal.add(Animal(type: '인간', sound: '으앙'));
    animal.add(Dog(type: '강아지', sound: '멍멍'));
    animal.add(Cat(type: '고양이', sound: '야옹'));
    animal.add(Bird(type: '새', sound: '까악아악'));

    for (int i = 0; i < animal.length; i++) {
      animal[i].bark();
    }
  });
}
