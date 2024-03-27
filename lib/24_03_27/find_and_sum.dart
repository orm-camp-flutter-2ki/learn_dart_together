int sumLargeTwo(List<int> numbers) {
  numbers.sort((a, b) => b.compareTo(a));
  return numbers[0] + numbers[1];
}
