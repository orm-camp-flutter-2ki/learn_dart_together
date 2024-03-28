import 'dart:convert';

import 'package:learn_dart_together/240327/data_source/mask_api.dart';
import 'package:learn_dart_together/240327/repository/mask_respository.dart';
import 'package:learn_dart_together/240327/repository_impl/mask_repo_impl.dart';
import 'package:learn_dart_together/240328/dto/mask_dto.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

import '../mask_expected_results.dart';

void main() {
  group('Mask model class, ', () {

    final mockClient = MockClient((request) async {
      if(request.url.toString() == 'http://104.198.248.76:3000/mask') {
        return http.Response.bytes(utf8.encode(jsonEncode(mockData)), 200);
      }
      return http.Response('''{"Response message" : "잘못된 요청"}''', 400);
    });

    test('마스크 가게 가져오기', () async {
      // Given
      MaskRepository maskRepository = MaskRepositoryImpl(maskApi: MaskApi(client: http.Client()));

      // When
      final stores = await maskRepository.getMaskStores();
      var expected = MaskDto.fromJson(mask_expected_results).stores;

      // Then
      expect(stores.length, expected!.length);

      expect(stores.first.addr, expected.first.addr);
      expect(stores.first.code, expected.first.code);
      expect(stores.first.created_at, expected.first.createdAt);
      expect(stores.first.lat, expected.first.lat);
      expect(stores.first.lng, expected.first.lng);
      expect(stores.first.name, expected.first.name);
      expect(stores.first.remain_stat, expected.first.remainStat);
      expect(stores.first.stock_at, expected.first.stockAt);
      expect(stores.first.type, expected.first.type);

      expect(stores.last.addr, expected.last.addr);
      expect(stores.last.code, expected.last.code);
      expect(stores.last.created_at, expected.last.createdAt);
      expect(stores.last.lat, expected.last.lat);
      expect(stores.last.lng, expected.last.lng);
      expect(stores.last.name, expected.last.name);
      expect(stores.last.remain_stat, expected.last.remainStat);
      expect(stores.last.stock_at, expected.last.stockAt);
      expect(stores.last.type, expected.last.type);
    });
  });
}

Map<String, dynamic> mockData = {
  "count": 222,
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
  ]
};