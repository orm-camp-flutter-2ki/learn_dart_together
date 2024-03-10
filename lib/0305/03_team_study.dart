//[?] 등차수열, 첫항이 5, 공차가 3일 때 10번째까지의 숫자를 공백으로 구분하여 출력하는 프로그램

void main() {
  print(solution04(5, 3));
}

List solution04(int m, int n) {
  // 첫항 m, 공차 n
  //[1] input
  List<int> numbers = [];

  //[2] process
  for (int i = 0; i < 10; i++) {
    numbers.add((m * i) + n);
  }

  return numbers;

  //[3] output
  print(numbers); // 공백 출력 어떻게 하지...
}
