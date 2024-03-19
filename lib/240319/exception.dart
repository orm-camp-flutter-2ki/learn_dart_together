void main() {
  final numString = '10.5';
  // try catch문 사용을 위해 num을 전역변수로 올림
  int num = 0;
  try {
    // 소수를 int로 parsing하여 에러 발생
    num = int.parse(numString);
  } catch (e) {
    // 에러 출력 (FormatException: Invalid radix-10 number (at character 1))
    print(e);
    // 예외가 발생하면 num을 0으로 처리
    num = 0;
  } finally {
    // 에러 발생여부와 상관없이 항상 실행되는 코드, num을 출력
    print(num);
  }
}
