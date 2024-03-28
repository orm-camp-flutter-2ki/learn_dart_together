import 'package:test/test.dart';

int sumTopTwoNum(Iterable<int> numbers) {
  if (numbers.length < 2) {
    throw ArgumentError('The iterable must contain at least two numbers.');
  }

  List<int> sortedNumbers = numbers.toList(); // Set이 들어왔을 때 리스트로 변환
  sortedNumbers.sort((a, b) => b.compareTo(a)); // 내림차순 정렬
  return sortedNumbers[0] + sortedNumbers[1]; // 가장 큰 두 수를 더하여 반환
}

void main() {
  group('Sum of Top Two Numbers Tests', () {
    test('Normal case', () {
      expect(sumTopTwoNum([1, 3, 5, 7, 9]), equals(16));
      expect(sumTopTwoNum({-9, -7, -5, -3, -1}), equals(-4));
    });

    test('Iterable with one number', () {
      expect(() => sumTopTwoNum([1]), throwsArgumentError);
      expect(() => sumTopTwoNum({-1}), throwsArgumentError);
    });
  });
}