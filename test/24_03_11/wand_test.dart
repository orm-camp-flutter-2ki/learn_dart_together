import 'package:learn_dart_together/24_03_11/wand.dart';
import 'package:test/test.dart';

void main() {
  group('wand class', () {

    Wand wand = Wand(0.4, 50, name: '지팡이');

    test('name property', () {
      // 이름 변경 확인하기
      expect(wand.name = '지', throwsException);
    });

    test('MP property', () {
      // 마력이 제대로 변경되는지 확인
       expect(wand.mp = 80.0, 80.0);

      // 유효하지 않은 마력 값(0.5 미만)을 설정하면 예외가 발생하는지 확인
      expect(wand.mp = 0.3, throwsException);

      // 유효하지 않은 마력 값(100.0 초과)을 설정하면 예외가 발생하는지 확인
      expect(wand.mp = 110.0, throwsException);
    });

  });

}
