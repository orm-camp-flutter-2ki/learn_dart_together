import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

// 재귀함수 쓰니까 편함 ^^ 시간복잡도는 for문이랑 비교했을 때 잘 모르겠음
int factorial(int n) {
  if (n == 1) return 1;

  return n * factorial(n - 1);
}

void main() {
  test('factorial 함수는 1 ~ n 까지의 곱을 반환한다.', () {
    final expectedResult = 120;

    final actualResult = factorial(5);

    expect(actualResult, expectedResult);
  });

  print(factorial(25));

  // int rage -9223372036854775808 to +9223372036854775807
  // factorial(25) = 7034535277573963776
  // factorial(26) = 7034535277573963776 * 26 = 182897917216923000000
  // 182897917216923000000 > 9223372036854775807 -> 펑 터짐
}
