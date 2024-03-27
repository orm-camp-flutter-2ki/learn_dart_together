import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_27/model/bank.dart';

import 'package:test/test.dart';
import 'package:http/testing.dart';

void main() {
  setUp(() => null);
  tearDown(() => null);

  // test('album 변칙', () async {
  //   final repository = BankRepositoryImpl(MockJsonPlaceHolderApi());
  //   final results = await repository.getAlbumsTop10();
  //   final expected = albumTop10.map((e) => Album.fromJson(e)).toList();
  //
  //   expect(results.equals(expected), true);
  // });

  group("bank 코드 테스트 : 연습문제 1", () {
    test("bank 코드 테스트", () {
      //given
      //when
      //then
      final json = {
        "name": "홍길동",
        "address": "서울시 어쩌구 저쩌구",
        "phone": "010-1111-2222"
      };
      final bank = Bank("홍길동", "서울시 어쩌구 저쩌구", "010-1111-2222");
      expect(bank.toJson(), json);
      // 디버깅에서 왜 안찍힘 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
      // null 값 이면 아예 안뜬다.ㅋㅋㅋㅋㅋㅋ
      final expectedResult = Bank.fromJson(json);
      expect(expectedResult, bank);
    });
  });
}
