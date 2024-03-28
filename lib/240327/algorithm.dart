import 'package:collection/collection.dart';

bool palindrome(String text) {
  // 특수문자 제거
  RegExp regExp = RegExp(r'[^ㄱ-ㅎㅏ-ㅣ가-힣a-zA-Z\d\\t\\r\\n][\\\^]?');

  final filteredText = text.replaceAll(regExp, '').toLowerCase();

  final reversedText = filteredText.split('').reversed.join();

  return filteredText == reversedText;
}

bool isPalindrome2(String input) {
  int p1 = 0;
  int p2 = input.length - 1;

  bool result = true;

  while (p1 < p2) {
    if (input[p1] != input[p2]) {
      result = false;
      break;
    }
    p1 += 1;
    p2 -= 1;
  }

  return result;
}

int maxTwoSum(List<int> numbers) {
  numbers.sort((a, b) => b.compareTo(a)); // 리스트를 내림차순으로 정렬
  return numbers[0] + numbers[1]; // 가장 큰 두 수의 합 반환
}

int plusMaxTwo(List<int> numList) {
  int numSum = 0;
  if (numList.isEmpty) {
    print(numSum);
    return numSum;
  }
  if (numList.length == 1) {
    print(numList.first);
    return numSum = numList.first;
  }


  final List<int> numSort = numList.sorted((a, b) => b.compareTo(a));

  numSum = numSort
      .slice(0, 2)
      .reduce((previousValue, element) => previousValue + element);
  print(numSum);
  return numSum;
}

// 3! => 3 * 2 * 1
int getFactorial(int n) {
  int returnValue = 1;
  for (int i = 1; i <= n; i++) {
    returnValue *= i;
  }
  return returnValue;
}

// 3 * (2 * 1)
// 3 * 2!
// 3 * factorial(2)
// 3 * 2 * 1
// 3 * 2
// 6


int factorial(int n) {
  return n <= 0 ? 1 : n * factorial(n - 1);
}

void main() {
  // print(factorial(50));
  // print(getFactorial(50));
}