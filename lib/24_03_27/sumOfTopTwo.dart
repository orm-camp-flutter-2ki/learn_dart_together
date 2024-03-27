int sumOfTopTwo(List<int> numbers) {
  if (numbers.length <= 1) {
    // 길이 1이하 날려버리기
    throw ArgumentError("배열의 길이가 2 이상이어야 합니다.");
  }

  numbers.sort((a, b) => b.compareTo(a));

  return numbers[0] + numbers[1];
}

void main() {
  List<int> numbers = [1, 2, 5, 3, 9, 8];
  // List<int> numbers = [1];
  int result = sumOfTopTwo(numbers);
  print(result);
}
