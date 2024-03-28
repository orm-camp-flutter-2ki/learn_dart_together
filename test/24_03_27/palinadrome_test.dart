import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('연습문제 2 - isPalindrome', () {
    //given
    final france = isPalindrome('france');
    final nowiwon = isPalindrome('nowiwon');
    final nursesrun = isPalindrome('nursesrun');
    final italy = isPalindrome('italy');

    //when

    //then
    expect(france, false);
    expect(nowiwon, true);
    expect(nursesrun, true);
    expect(italy, true);
  });
}

// 회문을 판단하는 메서드
bool isPalindrome(String words) {
  String reversWords = words.split('').reversed.join('');

  if (words == reversWords) {
    print('$words는 회문입니다.');
  } else {
    print('$words는 회문이 아닙니다.');
  }
  return words == reversWords;
}
