import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:learn_dart_together/24_03_26/bank.dart';
import 'package:learn_dart_together/24_03_26/biggest_two_number.dart';
import 'package:learn_dart_together/24_03_26/factorial.dart';
import 'package:learn_dart_together/24_03_26/mask/data_source/mask_api.dart';
import 'package:learn_dart_together/24_03_26/mask/model/mask_model.dart';
import 'package:learn_dart_together/24_03_26/mask/repository/mask_repository_impl.dart';
import 'package:learn_dart_together/24_03_26/palindrome.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import 'masks.dart';

void main() {
  group('test', () {
    test('fromJson', () {
      final jsonList = {
        "name": "홍길동",
        "address": "서울시 어쩌구 저쩌구",
        "phone": "010-1111-2222"
      };
      final bank = Bank.fromJson(jsonList);
      expect(bank.name, jsonList['name']);
      expect(bank.address, jsonList['address']);
      expect(bank.phone, jsonList['phone']);

      final toJson = bank.toJson();
      expect(toJson, jsonList);
    });

    test('palindrome', () {
      final String palindrome = 'racecar';
      expect(isPalindrome('racecar'), '$palindrome은 회문입니다.');
    });

    test('biggest two number', () {
      final List<int> numList = [1, 2, 5, 3, 9, 8];
      expect(biggestTwoNumber(numList), 17);
    });

    test('factorial', () {
      expect(getFactorial(5), 120);
    });

    test('mask', () async {
      final mockClient = MockClient((request) async {
        if (request.url.toString() ==
        'http://104.198.248.76:3000/mask') {
          return http.Response(jsonEncode(masks), 200);
        }
        return http.Response('error', 400);
      });


      final repository = MaskRepositoryImpl(MaskApi(client: mockClient));
      final results = await repository.getMasks();
      final expectedMap = json.decode(json.encode(masks)) as Map<String, dynamic>;
      final expectedList = expectedMap['stores'] as List;
      final expected = expectedList.map((e) => MaskModel.fromJson(e)).toList();
      // 대체 왜?????????????????? 안되는거지?????
      // dart:convert                             Latin1Codec.encode
      // package:http/src/response.dart 37:49     new Response
      // test\bank.dart 51:23                     main.<fn>.<fn>.<fn>
      // package:http/src/mock_client.dart 49:36  new MockClient.<fn>
      expect(results, expected);
    });
  });
}



