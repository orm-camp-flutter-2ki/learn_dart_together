import 'package:learn_dart_together/240327/pailindrome.dart';
import 'package:test/test.dart';

void main() {
  test('회문 테스트', () {
    String text1 = '우영우';
    String text2 = '한정만';
    String text3 = '꽁치';
    String text4 = '기러기러기';
    print(checkPailindrome(text1));
    String trueResult = '는 회문입니다.';
    String falseResult = '는 회문이 아닙니다.';
    bool result1 = checkPailindrome(text1) == '"$text1"$trueResult';
    bool result2 = checkPailindrome(text2) == '"$text2"$falseResult';
    bool result3 = checkPailindrome(text3) == '"$text3"$falseResult';
    bool result4 = checkPailindrome(text4) == '"$text4"$trueResult';
    print('$text1$trueResult');

    expect(result1, isTrue);
    expect(result2, isTrue);
    expect(result3, isTrue);
    expect(result4, isTrue);
  });
}
