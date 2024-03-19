void main() {
  final numString = '10.5';

  //원래 코드의 int를 double로 변경
  double num = double.parse(numString);

  // runtime에러를 위한 리스트 생성
  List<double> nums = [1, 2, 3];

  // 초과한 값 출력 시도해서 오류 발생
  print(nums[3]);
}
