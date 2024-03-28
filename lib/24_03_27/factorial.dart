// 양의 정수 n이 주어졌을 때, n의 팩토리얼(factorial) 값을 반환하는 함수를 작성하세요.
// 팩토리얼은 1부터 n까지의 모든 양의 정수를 곱한 값입니다.
// 예시: n이 5일 때, 5의 팩토리얼 값은 1 x 2 x 3 x 4 x 5 = 120이므로, 함수는 120을 반환해야 합니다.

int factorial(int n) {
   int returnValue = 1;
  for (int i = 1; i <= n; i++) {     // 1부터 n까지의 모든 양의 정수를 곱하여 결과에 저장
    returnValue *= i;
  }

  return returnValue; // 계산된 팩토리얼 값을 반환
}
