import 'package:learn_dart_together/24_03_27/bank.dart';
import 'package:learn_dart_together/24_03_27/mask.dart';
import 'package:learn_dart_together/http/fake_http_service.dart';
import 'package:learn_dart_together/http/http_core.dart';
import 'package:learn_dart_together/repository/mask_repository_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  final _httpService = HttpService();
  final _fakeHttpService = FakeHttpService();

  group('unit test', () {
    test('Q1. bank test', () {
      Map<String, dynamic> b = {
        "name": "홍길동",
        "address": "서울시 어쩌구 저쩌구",
        "phone": "010-1111-2222"
      };

      final Bank bank = Bank.fromJson(b);

      expect(bank.name == '홍길동', true);
    });
  });

  test('Q2. palindrome test', () {
    expect(palindromeCheck('nooN') == true, true);
  });

  test('Q3. 가장 큰 두 수의 합 test', () {
    final List<int> numbers = [1, 2, 4, 6, 9, 20];

    expect(bestSum(numbers) == 29, true);
  });

  test('Q4. factorial test', () {
    expect(factorial(5) == 120, true);
  });

  test('Q5. mask model test', () async {
    // final Mask mask = await MaskRepositoryImpl(_httpService).getMask();
    final Mask mask = await MaskRepositoryImpl(_fakeHttpService).getMask();

    expect(mask.stores[0].name == '승약국', true);
  });
}

/// Q4. 양의 정수 n이 주어졌을 때, n의 팩토리얼(factorial) 값을 반환하는 함수를 작성하세요.
/// 팩토리얼은 1부터 n까지의 모든 양의 정수를 곱한 값입니다.
int factorial(int n) {
  // 0 또는 1의 팩토리얼은 항상 1
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * factorial(n - 1);

    // 5 x factorial(4)
    // 4 x factorial(3)
    // 3 x factorial(2)
    // 2 x factorial(1)
    // => 즉 이것과 같음 : 5 x factorial(4) x factorial(3)x factorial(2) x factorial(1)
    // = 5 x 4 x 3 x 2 x 1
  }
}

// 위와 같은 함수, 람다식으로 표현.
int factorial2(int n) => (n == 0 || n == 1) ? 1 : n * factorial2(n - 1);

/// Q3. 주어진 정수 배열 또는 리스트에서 가장 큰 두 수를 찾아 더한 값을 반환하는 함수를 작성하세요
int bestSum(List<int> numbers) {
  numbers.sort((a, b) => b.compareTo(a));

  return numbers[0] + numbers[1];
}

/// Q2. 회문 체크
bool palindromeCheck(String text) {
  text = text.toLowerCase();
  int start = 0;
  int end = text.length - 1;

  while (start < end) {
// 시작과 끝에서 한 글자씩 비교. 다르면 false
    if (text[start] != text[end]) {
      return false;
    }
    start++;
    end--;
  }

  return true;
}
