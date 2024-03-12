import 'package:learn_dart_together/orm_240312/animal.dart';
import 'package:test/test.dart';

void main(){
  test('animal', (){
  Cat cat = Cat('고양이', '냐옹', '샴');
  // expect(cat.SoundAnimal, cat.sound);
  cat.SoundAnimal();
  Dog dog = Dog('강아지', '멍멍', '진돗개');
  Bird bird = Bird('조류', '짹짹', '날개');
  print(cat.sound);
  });

}