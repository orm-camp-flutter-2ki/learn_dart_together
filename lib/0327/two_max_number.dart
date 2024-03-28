int addTwoMaxNumber(List<int> numbers) {
  if (numbers.isEmpty) return 0;
  if (numbers.length == 1) return numbers.first;

  final minInt = -9223372036854775808;
  int max1 = minInt;
  int max2 = minInt;

  for (int number in numbers) {
    if (number > max1) {
      max2 = max1;                // 첫 번째로 큰 값보다 더 큰 값을 찾았으니, 첫 번째로 큰 값이었던 게 두 번째로 큰 값이 된다.
      max1 = number;              // 첫 번째로 큰 값보다 더 큰 값으로 할당한다.
    } else if (number > max2) {
      max2 = number;              // 나중에 나오는 값들이 첫 번째로 큰 값보다 더 큰 값은 아닐지라도, 두 번째로 큰 값보다 큰 값이 존재할 수 있기 때문에 첫 번째 조건만으로는 원하는 결과를 도출할 수 없다.
    }
  }

  if (max1 > 0 && max2 > 0 && max1 + max2 < 0) throw Exception('Overflow');
  if (max1 < 0 && max2 < 0 && max1 + max2 >= 0) throw Exception('Underflow');
  return max1 + max2;
}