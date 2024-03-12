import 'package:learn_dart_together/orm_240312/animal.dart';
import 'package:test/test.dart';

void main(){
  test('animal', (){
  Cat cat = Cat('고양이', '냐옹');
  expect(cat.SoundAnimal, cat.sound);
  });
}