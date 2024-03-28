import 'dart:convert';

import 'package:learn_dart_together/24_03_27/model/bank.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  // bank 인스턴스 생성
  final bankList = Bank('홍길동', '서울시 어쩌구 저쩌구', '010-1111-2222');

  test('연습문제 1 - TestCode: jsonEncode(직렬화)', () {
    //given
    final jsonEncoding = jsonEncode(givenList); // givenList 직렬화

    //when
    final bankEncoding = jsonEncode(bankList); // bankList 직렬화

    //then
    expect(jsonEncoding == bankEncoding, false); //givenList, bankList 비교
  });

  test('연습문제 1 - TestCode: jsonDecode(역직렬화)', () {
    final bank = Bank('홍길동', '서울시 어쩌구 저쩌구', '010-1111-2222');
    final jsonEncoding = jsonEncode(givenList); // givenList 직렬화
    final bankEncoding = jsonEncode(bank); // bankList 직렬화

    //given
    final jsonDecoding = jsonDecode(jsonEncoding); // givenList 역직렬화

    //when
    final bankDecoding = jsonDecode(bankEncoding); // bankList 역직렬화
    //then
    expect(jsonDecoding == bankDecoding, false); // givenList , bankList 비교
  });
}
