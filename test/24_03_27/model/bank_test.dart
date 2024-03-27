import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_27/model/bank.dart';
import 'package:test/test.dart';

void main() {
  group('Bank 클래스 직렬화 & 역직렬화 테스트', () {
    final jsonString = '''{"name":"홍길동","address":"서울시 어쩌구 저쩌구","phone":"010-1111-2222"}''';

    test('역직렬화 테스트', () {
      /* 디버깅 과정
      * 1. 역직렬화 후, 동일한 인스턴스인 expectedBank와 동일성 테스트를 진행한다.
      * 2. 오류 발생 로그를 보면, bank 인스턴스가 null로 나온다고 뜬다. 인스턴스 생성과정에 문제가 발생했음을 유추할 수 있음.
      * 3. 인스턴스를 생성하는 코드줄에 breakPoint를 걸고 디버깅을 진행한다.
      * 4. 한단계씩 가다보면 fromJson에 문제가 발생했음을 인지할 수 있다.
      */
        final decoded = jsonDecode(jsonString);
        final Bank bank = Bank.fromJson(decoded);

        expect(bank == expectedBank, true);
    });

    test('직렬화 테스트', () {
      /* 디버깅 과정
      * 1. 직렬화는, 역직렬화처럼 눈에 띄는 오류가 발생하지 않음. 하지만 결과값이 기대치와 다르기에
      * 2. 동일하게 역직렬화 과정에 breakPoint를 걸고 디버깅을 실행하면
      * 3. 역직렬화를 진행한 결과가 눈에 보이기 때문에 직접 보면서 비교 검증밖에 할 수 없다.
      * 4. 결과적으로 toJson의 key 값들이 이상함을 알 수 있다.
      */
      final decoded = jsonDecode(jsonString);
      final Bank bank = Bank.fromJson(decoded);
      final Map<String, dynamic> toJson = bank.toJson();
      final encoded = jsonEncode(toJson);

      expect(DeepCollectionEquality().equals(encoded, jsonString), true);
    });
  });
}

final Bank expectedBank = Bank(name: '홍길동', address: '서울시 어쩌구 저쩌구', phone: '010-1111-2222');
