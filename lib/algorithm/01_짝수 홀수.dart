/* 입력
입력은 다음 형식을 따릅니다
두개의 정수 N,M을 공백으로 구분하여 입력합니다.
입력은 한 줄이며 끝에 줄 바꿈을 포함합니다. */

/*출력
N,M 두 숫자가 짝수와 홀수의 쌍이면 "YES", 그렇지 않으면 "NO" 출력. */

// 예1)
// 입력
// 30 15
// 출력 YES

// 예2)
// 입력
// 12 40
// 출력 No

void main() {
  pickRandom(30, 15);
  print(pickRandom(30, 15));
  pickRandom(12, 40);
  print(pickRandom(12, 40));
}

String pickRandom(int a, int b) {
  if ((a + b) % 2 == 0) {
    return 'NO';
  } else {
    return 'YES';
  }
}
