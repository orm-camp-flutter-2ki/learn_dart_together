import 'dart:convert';
import 'dart:io';

import 'package:learn_dart_together/0327/model/bank_model.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:collection/collection.dart';

void main() async {
  String bankDataFile = await File(
          '/Users/yong/Desktop/learn_dart_together/lib/0327/source/bank_data.json')
      .readAsString();

  final expectedList = [
    {"name": "홍길동", "address": "서울시 어쩌구 저쩌구", "phone": "010-1111-2222"}
  ];

  final expectedString =
      '[{"name":"홍길동","address":"서울시 어쩌구 저쩌구","phone":"010-1111-2222"}]';

  group('bank ', () {
    final eq = DeepCollectionEquality().equals;
    test('역 직렬화 test', () async {
      final List json = await jsonDecode(bankDataFile);
      json.map((e) => Bank.fromJson(e)).toList();

      expect(eq(json, expectedList), true);
    });

    test('직렬화', () async {
      final List json = await jsonDecode(bankDataFile);
      json.map((e) => Bank.fromJson(e)).toList();

      final jsonStr = jsonEncode(json);

      expect(eq(jsonStr, expectedString), true);
    });
  });
}
