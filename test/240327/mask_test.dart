import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240327/data_source/mask_api.dart';
import 'package:learn_dart_together/240327/repository/mask_repository.dart';
import 'package:learn_dart_together/240327/repository/mask_repository_impl.dart';
import 'package:test/test.dart';
import 'package:http/testing.dart';

void main() {
  Map<String, dynamic> mockMap = {
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
      }
    ]
  };

  test('Store test', () async {
    final mockClient = MockClient((request) async {
      if (request.url.toString() == 'http://104.198.248.76:3000/mask') {
        // 한글깨짐
        return http.Response.bytes(utf8.encode(jsonEncode(mockMap)), 200);
      }
      return http.Response('''{"message":"&2& 2F"}''', 400);
    });
    MaskRepository maskRepository = MaskRepositoryImpl(MaskApi(client: mockClient));

    final stores = await maskRepository.getStores();
  });
}
