void main() {
  // final numString = '10.5';
  // int number;
  //
  // try {
  //   number = int.parse(numString);
  // } catch (e) {
  //   number = 0; //예외 발생하면 0으로 처리
  // }
  // print(number);

  //위 코드를 아래 한줄로 -> 섹시코드
  print(int.tryParse('10.5') ?? 0);
}

int exception(String numString) {
  int number;
  try {
    number = int.parse(numString);
  } catch (e) {
    number = 0;
  }
  return number;
}
