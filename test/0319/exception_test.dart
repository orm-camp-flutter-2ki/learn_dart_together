import 'package:test/test.dart';

void main() {
  test('try-catch를 사용한 예외 처리, FormatException 발생', () {
    final numString = '10.5';
    int num = 0;

    try {
      num = int.parse(numString);
    } on FormatException catch(e, s) {
      print(e.toString());
      print(s.toString());
    } catch(e, s) {
      print(e.toString());
      print(s.toString());
    }

      expect(num, 0);
  });
}