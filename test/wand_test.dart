import 'package:learn_dart_together/240309/wand.dart';
import 'package:test/test.dart';

void main() {
  group('Wand', () {
    test('name 속성이 3글자 미만일 때 예외를 발생시키는가', () {
      expect(() => Wand(name: 'tw', power: 10), throwsException);
    });

    test('name 속성이 3글자 이상일 때 정상값으로 초기화하는가', () {
      expect(() => Wand(name: 'twWand', power: 100), returnsNormally);
    });
  });
}