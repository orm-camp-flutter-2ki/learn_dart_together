void main() {
  // int number;
  // try {
  //   number = int.parse('10.5');
  // } catch (e) {
  //   number = 0;
  // }
  //
  // print(number);

  // 섹시코드
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
