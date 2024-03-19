import 'package:test/test.dart';

void main() {
  test('예외 테스트 시작', () {
    final numString = '10.5';
    int num;
    try {
      num = int.parse(numString);
    } catch (e) {
      num = 0;
    }
    expect(num == 0, true);
  });
}