import 'dart:convert';

import 'package:dart_cli_practice/240327/api/mask_api.dart';
import 'package:dart_cli_practice/240327/api/mock_mask_api.dart';
import 'package:dart_cli_practice/240327/model/mask.dart';
import 'package:dart_cli_practice/240327/repository/mask_repository.dart';
import 'package:dart_cli_practice/240327/repository/mask_repository_impl.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  final data = {
    "count": 10,
    "stores": [
      {
        "addr": "서울특별시 강북구 솔매로 38 (미아동)",
        "code": "11817488",
        "created_at": "2020/07/03 11:00:00",
        "lat": 37.6254369,
        "lng": 127.0164096,
        "name": "승약국",
        "remain_stat": "plenty",
        "stock_at": "2020/07/02 18:05:00",
        "type": "01"
      },
      {
        "addr": "서울특별시 강북구 삼양로 247 3층 (미아동)",
        "code": "12856941",
        "created_at": "2020/07/03 11:00:00",
        "lat": 37.6255182,
        "lng": 127.017747,
        "name": "대지약국",
        "remain_stat": "plenty",
        "stock_at": "2020/07/03 10:45:00",
        "type": "01"
      },
      {
        "addr": "서울특별시 강북구 삼양로 255 (미아동)",
        "code": "11819723",
        "created_at": "2020/07/03 11:00:00",
        "lat": 37.6261612,
        "lng": 127.0180494,
        "name": "청구약국",
        "remain_stat": "plenty",
        "stock_at": "2020/07/03 10:40:00",
        "type": "01"
      },
      {
        "addr": "서울특별시 강북구 솔샘로 254 2층 2호 (미아동, 삼양아케이트)",
        "code": "11888571",
        "created_at": "2020/07/03 11:00:00",
        "lat": 37.627357,
        "lng": 127.018375,
        "name": "민들레약국",
        "remain_stat": "plenty",
        "stock_at": "2020/06/29 08:12:00",
        "type": "01"
      },
      {
        "addr": "서울특별시 강북구 삼양로77길 25 (수유동)",
        "code": "11845929",
        "created_at": "2020/07/03 11:00:00",
        "lat": 37.6297115,
        "lng": 127.0168913,
        "name": "우정약국",
        "remain_stat": "plenty",
        "stock_at": "2020/07/01 15:35:00",
        "type": "01"
      },
      {
        "addr": "서울특별시 강북구 삼양로 293 (수유동)",
        "code": "11817968",
        "created_at": "2020/07/03 11:00:00",
        "lat": 37.6297559,
        "lng": 127.0177412,
        "name": "삼천약국",
        "remain_stat": "plenty",
        "stock_at": "2020/07/03 08:45:00",
        "type": "01"
      },
      {
        "addr": "서울특별시 강북구 도봉로67길 34 (미아동)",
        "code": "11819693",
        "created_at": "2020/07/03 11:00:00",
        "lat": 37.6302571,
        "lng": 127.022447,
        "name": "수유태평양약국",
        "remain_stat": "plenty",
        "stock_at": "2020/07/02 09:46:00",
        "type": "01"
      },
      {
        "addr": "서울특별시 강북구 인수봉로 142 (수유동)",
        "code": "11819154",
        "created_at": "2020/06/28 23:55:00",
        "lat": 37.6323392,
        "lng": 127.0138353,
        "name": "한사랑온누리약국",
        "remain_stat": "few",
        "stock_at": "2020/06/22 21:11:00",
        "type": "01"
      },
      {
        "addr": "서울특별시 강북구 삼양로 309 (수유동)",
        "code": "12826456",
        "created_at": "2020/07/03 11:00:00",
        "lat": 37.6309979,
        "lng": 127.0175749,
        "name": "푸른약국",
        "remain_stat": "plenty",
        "stock_at": "2020/07/01 13:40:00",
        "type": "01"
      },
      {
        "addr": "서울특별시 강북구 삼양로 319 1층 (수유동)",
        "code": "12861448",
        "created_at": "2020/07/03 11:00:00",
        "lat": 37.6318474,
        "lng": 127.0175079,
        "name": "서울진약국",
        "remain_stat": "plenty",
        "stock_at": "2020/07/03 09:02:00",
        "type": "01"
      }
    ]
  };

  group('MaskRepository는', () {
    // 테스트 용 mockClient 생성
    final mockClient = MockClient((request) async {
      if (request.url.toString() == 'http://104.198.248.76:3000/mask') {
        return http.Response.bytes(
          utf8.encode(jsonEncode(data)),
          200,
        );
      }

      return http.Response('''{"message": "잘못된 요청"}''', 400);
    });

    final MaskApi api = MockMaskApi(client: mockClient);

    final MaskRepository maskRepository = MaskRepositoryImpl(api: api);

    final expectedMask = Mask.fromJson(data);

    test('findMaskInfo() 메소드로 Mask 객체를 가져온다', () async {
      final actualMask = await maskRepository.findMaskInfo();

      // expect(actualMask.hashCode, expectedMask.hashCode);

      expect(actualMask, equals(expectedMask));
    });
  });
}
