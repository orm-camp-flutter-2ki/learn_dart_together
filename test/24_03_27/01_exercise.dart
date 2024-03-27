import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:http/testing.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_27/data_source/mask_api.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_27/expected_result.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_27/model/mask.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_27/repository/mask_repository.dart';
import 'package:test/test.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_27/01_exercise.dart';
import 'package:http/http.dart' as http;

void main() {
  group('연습문제', () {
    test('palindrom 여부 확인 test', () {
      expect(checkPalindrom('racecar'), true);
      expect(checkPalindrom('hello'), false);
    });

    test('가장 큰 두 수를 찾아 더한 값을 반환', () {
      final number = 7;
      final arr = [1, 4, 3];
      expect(biggestNum(arr), number);
      expect(biggestNum([1, 2, 5, 3, 9, 8]), 17);
    });

    test('팩토리얼 값 반환', () {
      final number = 5;

      expect(factorial(number), 120);
    });

    test('마스크 판매점 정보', () async {
      // final mockClient = MockClient((request) async {
      //   if (request.url.toString() == 'http://104.198.248.76:3000/mask') {
      //     return http.Response(jsonEncode(expectedMasks), 200);
      //   }
      //   return http.Response('error', 400);
      // });

      final repository = MaskRepositoryImpl(MockJsonPlaceHolderApi());
      final results = await repository.getMasks();
      final expected = expectedMasks.map((e) => Mask.fromJson(e)).toList();
      expect(results.equals(expected), true);
    });
  });
}
