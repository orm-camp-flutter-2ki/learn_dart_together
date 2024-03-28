import 'dart:convert';

import 'package:http/testing.dart';
import 'package:learn_dart_together/24_03_27/repository/mask_repository_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:http/http.dart' as http;

void main() {
  test('연습문제1 동적 Json 처리 연습', () async {
    //given
    Map<String, dynamic> mockStoreMap = {
      "addr": "",
      "code": "11817488",
      "created_at": "2020/07/03 11:00:00",
      "lat": 37.6254369,
      "lng": 127.0164096,
      "name": "승약국",
      "remain_stat": "plenty",
      "stock_at": "2020/07/02 18:05:00",
      "type": "01"
    };

    final mockClient = MockClient((request) async {
      if (request.url.toString() == 'http://104.198.248.76:3000/mask') {
        return http.Response(jsonEncode(mockStoreMap), 200);
      }
      return http.Response('error', 400);
    });

    //when
    final repository = MaskRepositoryImpl();
    final maskStores = await repository.getStores();
    final expected = await jsonEncode(mockStoreMap);
    print(maskStores.first.addr);

    //then
    expect(maskStores.first.addr != null , true);

  });
}