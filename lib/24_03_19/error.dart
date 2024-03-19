void main() {
  final numString = '10.5';

  //원래 코드의 int를 double로 변경
  double num = double.parse(numString);

  // runtime에러를 위한 리스트 생성
  List<double> nums = [1, 2, 3];

  // try-catch를 사용한 예외처리
  try {
    // 리스트를 초과하는 값을 출력 시도 <- 에러발생
    print(nums[3]);
  }
  // 에러 발생에 대한 예외처리
  catch (e) {
    // 0으로 처리하기 위해 num = 0 설정
    num = 0;

    // 예외처리한 값을 출력하기 위한 print
    print(num);
  }
}
