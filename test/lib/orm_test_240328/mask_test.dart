import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:learn_dart_together/orm_240328/02_data_source/mask_api.dart';
import 'package:learn_dart_together/orm_240328/02_dto/stores_dto.dart';
import 'package:learn_dart_together/orm_240328/02_model/stores.dart';
import 'package:learn_dart_together/orm_240328/02_repository/mask_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  final mockMap = {
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

  Stores store = Stores(
      addr: '서울특별시 강북구 솔매로 38 (미아동)',
      code: '11817488',
      created_at: '2020/07/03 11:00:00',
      lat: 37.6254369,
      lng: 127.0164096,
      name: '승약국',
      remain_stat: 'plenty',
      stock_at: '2020/07/02 18:05:00',
      type: '01');

  test('maskTest', () async {
    final mockClient = MockClient((request) async {
      if (request.url.toString() == 'http://104.198.248.76:3000/mask') {
        return http.Response(jsonEncode(mockMap), 200);
      }
      return http.Response('error', 400);
    });

    final repository = MaskRepositoryImpl(MaskApi(client: mockClient));

    final results = await repository.getStores();
    final expected = results
        .map((e) => StoreDto.fromJson(e as Map<String, dynamic>))
        .toList();
    print(results);
    expect(results.equals(expected.cast<Stores>()), true);
  });
}
