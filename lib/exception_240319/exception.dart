void main() {
  final numString = '10.5';

  void someError() {
    int num = int.parse(numString);
    print(num);
  }

  try {
    // 예외가 발생할 수 있는 코드 작성
    someError();
  } catch (e) {
    // 예외 처리
    int num = 0;
    print('예외 처리됨');
  } finally {
    // 예외가 발생하든 안 하든 항상 실행되는 코드
    print('Finally block executed'); // 항상 출력됨
  }
}


