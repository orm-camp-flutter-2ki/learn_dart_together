import 'dart:convert';

import 'package:learn_dart_together/240327/data_source/mask_api.dart';
import 'package:learn_dart_together/240327/model/store.dart';
import 'package:learn_dart_together/240327/repository/mask_respository.dart';
import 'package:learn_dart_together/240327/repository_impl/mask_repo_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

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
      final expected = Store.fromJson({
        "addr": "서울특별시 강북구 솔매로 38 (미아동)",
        "code": "11817488",
        "created_at": "2020/07/03 11:00:00",
        "lat": 37.6254369,
        "lng": 127.0164096,
        "name": "승약국",
        "remain_stat": "plenty",
        "stock_at": "2020/07/02 18:05:00",
        "type": "01"
      });

      MaskRepository maskRepository = MaskRepositoryImpl(maskApi: MaskApi(client: mockClient));

      // When
      final stores = await maskRepository.getMaskStores();

      // Then
      expect(stores.first, expected);
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