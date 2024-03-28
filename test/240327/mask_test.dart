import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';
import 'package:learn_dart_together/240327/data_source/store.dart';
import 'package:learn_dart_together/240327/repository/mask_repository.dart';
import 'package:learn_dart_together/240327/repository/mask_repository_Impl.dart';

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

  test('Mask Test', () async {
    // Given
    final mockClient = MockClient((request) async {
      if (request.url.toString() == 'http://104.198.248.76:3000/mask') {
        return http.Response.bytes(utf8.encode(jsonEncode(mockMap)), 200);
      }
      return http.Response('''{"message": "오류"}''', 400);
    });

    // When
    MaskRepository maskRepository =
        MaskRepository_impl(mockClient); // Mock 클라이언트를 사용하여 repository 초기화

    final stores = await maskRepository.getStores(); // Mock 클라이언트를 통해 가짜 응답을 받음

    final expectedStore = Store(
      addr: '서울특별시 강북구 솔매로 38 (미아동)',
      code: '11817488',
      created_at: '2020/07/03 11:00:00',
      lat: 37.6254369,
      lng: 127.0164096,
      name: '승약국',
      remain_stat: 'plenty',
      stock_at: '2020/07/02 18:05:00',
      type: '01',
    );

    // Then
    expect(stores[0], expectedStore); // 예상되는 상점과 반환된 상점이 같은지 확인
  });
}
