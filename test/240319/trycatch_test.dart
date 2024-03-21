import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('정수형태의 문자열이 아니면 0을 반환해야 한다', () {
    int number;
    try {
      number = int.parse('10.5');
    } catch (e) {
      number = 0;
    }

    expect(number, 0);


    try {
      number = int.parse('10');
    } catch (e) {
      number = 0;
    }

    expect(number, 10);
  });
}