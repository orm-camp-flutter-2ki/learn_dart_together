import 'package:learn_dart_together/240327/model/bank.dart';
import 'package:test/test.dart';

void main() {
  test('Bank 객체의 직렬화 및 역직렬화 테스트를 한다.', () async {
    final expected =
        Bank("홍길동", "서울시 어쩌구 저쩌구", "010-1111-2222"); //테스트할 bank의 객체를 생성하기
    final json = expected.toJson(); //Bank 객체를 Json으로 직렬화를 시킨다.
    final actual = Bank.fromJson(
        json); //Json을 Bank 객체로 역직렬화를 시킨다. phone이 아니라 plone으로 되어 있음
    expect(actual.name, equals(expected.name));
    expect(actual.address, equals(expected.address));
    expect(actual.phone, equals(expected.phone));
  });
  // /Users/jungeunhan/development/flutter/bin/cache/dart-sdk/bin/dart run test -r json /Users/jungeunhan/learn_dart_together/test/240327/test.dart
  // Testing started at 2:59 PM ...
  // package:learn_dart_together/240327/model/bank.dart 9:29  new Bank.fromJson
  // test/240327/test.dart 9:25                               main.<fn>
  //
  // type 'Null' is not a subtype of type 'String' in type cast 오류가 뜸
}
