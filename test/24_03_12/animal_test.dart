import 'package:test/test.dart';
import '../24_03_11/animal.dart';
import '../24_03_11/dog.dart';
import '../24_03_11/dolphin.dart';

void main() {
  test('Animal과 dog, dolphin의 상속 관계 확인', () {
    Dog thor = Dog(species: '강아지', sound: '멍멍', mainLiving: '주인집', name: '토르');
    Dolphin dolphin = Dolphin(species: '돌고래', sound: '삑삑?', mainLiving: '바다 깊은곳', size: '소형');

    expect(thor is Animal, true);
    expect(dolphin is Animal, true);
  });
}