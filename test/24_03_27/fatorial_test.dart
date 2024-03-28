import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {

  test('연습문제 4 - factorial 테스트', () {

    //given
    var facto = factorial(4);
    var facto1 = factorial(5);
    var facto2 = factorial(6);

    //when

    //then
    expect(facto == 24, true);
    expect(facto1 == 120, true);
    expect(facto2 == 720, true);
  });
}

int factorial(int num) {
  if (num <= 1) {
    return 1;
  } else {
    return num * factorial(num - 1);
  }
}
