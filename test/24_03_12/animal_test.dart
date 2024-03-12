import 'package:learn_dart_together/24_03_12/animal.dart';
import 'package:learn_dart_together/24_03_12/dog.dart';
import 'package:learn_dart_together/24_03_12/dolphin.dart';
import 'package:test/test.dart';

void main() {
  test('Animal과 dog, dolphin의 상속 관계 확인', () {
    Dog thor = Dog(species: '강아지', sound: '멍멍', mainLiving: '주인집', name: '토르');
    Dolphin dolphin = Dolphin(species: '돌고래', sound: '삑삑?', mainLiving: '바다 깊은곳', size: '소형');

    expect(thor is Animal, true);
    expect(dolphin is Animal, true);
  });
}