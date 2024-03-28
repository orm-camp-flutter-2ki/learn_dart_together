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
}
