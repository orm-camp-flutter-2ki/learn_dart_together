import 'package:learn_dart_together/240327/array.dart';
import 'package:learn_dart_together/240327/bank.dart';
import 'package:learn_dart_together/240327/data_source/expected.dart';
import 'package:learn_dart_together/240327/factorial.dart';
import 'package:learn_dart_together/240327/model/stores.dart';
import 'package:learn_dart_together/240327/repository/mask_repo_impl.dart';
import 'package:learn_dart_together/240327/top_level.dart';
import 'package:test/test.dart';

void main() {
  test('문제 1번. Bank 객체의 직렬화 및 역직렬화 테스트를 한다.', () async {
    final expected =
        Bank("홍길동", "서울시 어쩌구 저쩌구", "010-1111-2222"); //테스트할 bank의 객체를 생성하기
    final json = expected.toJson(); //Bank 객체를 Json으로 직렬화를 시킨다.
    final actual = Bank.fromJson(
        json); //Json을 Bank 객체로 역직렬화를 시킨다. phone이 아니라 plone으로 되어 있음
    expect(actual.name, equals(expected.name));
    expect(actual.address, equals(expected.address));
    expect(actual.phone, equals(expected.phone));
  });
  test(
      '문제 2번. top-level 클래스 안의 isPalindrom(회문인지 판별) checkPalindrome(문자열이 회문인지 검사)함수테스트 코드로 검증',
      () {
    TopLevel topLevel = TopLevel();
    expect(topLevel.isPalindrome('level'), true); // "level"은 회문임
    expect(topLevel.isPalindrome('hello'), false); // "hello"는 회문이 아님
    expect(topLevel.isPalindrome('racecar'), true); // "racecar"은 회문임
    expect(topLevel.isPalindrome('12321'), true); // "12321"은 회문임
    expect(topLevel.isPalindrome('안 녕 하 세 요'), false); // 공백이 있는 문자열은 회문이 아님
  });
  test('문제 3번. 리스트에서 가장 큰 두 수를 찾아 더한 값을 반환', () {
    Array array = Array();
    expect(array.sumTwoNumber([1, 2, 3, 4, 5]), 9);
    expect(array.sumTwoNumber([1, 4, 2, 3, 5]), 9);
  });
  test('문제 4번. 1부터 n까지의 모든 양의 정수를 곱한 값', () {
    expect(factorial(0), 1);
    expect(factorial(1), 1);
    expect(factorial(2), 2);
    expect(factorial(3), 6);
    expect(factorial(4), 24);
    expect(factorial(5), 120);
  });
  test(
      '문제 5번. getMask() 메서드를 활용하여 Json 파일 값 불러온것을 확인하고 스토어 리스트 값과 결과 값이 같은지 확인',
      () async {
    final repository = MaskReposityIpml();
    final masks = await repository.getMask();
    final storeList = masks.stores;
    final result = expected
        .map((e) => Stores.fromJson(e))
        .toList(); //리스트로 갖고 왔으니까 리스트 형식으로 해야함
    expect(storeList, result);
  });
  test('문제 5번. getMask() 메서드를 활용하여 Mask Json 파일 값 불러온것을 확인하고 Mask 결과 값이 같은지 확인',
      () async {
    final repository = MaskReposityIpml();
    final masks = await repository.getMask();
    final store = masks.stores.first.name;
    expect(store, '승약국');
  });
}
