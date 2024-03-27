import 'dart:convert';
import 'package:learn_dart_together/0327/data_source/mask_api.dart';
import 'package:learn_dart_together/0327/model/mask.dart';
import 'package:learn_dart_together/0327/repository/mask_repository.dart';
import 'package:learn_dart_together/0327/repository/mask_repository_impl.dart';
import 'package:test/test.dart';
import 'package:http/testing.dart';
import 'package:http/http.dart' as http;

void main() {
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
      {
        "addr": "서울특별시 강북구 솔매로 59 (미아동)",
        "code": "12844551",
        "created_at": "2020/07/03 11:00:00",
        "lat": 37.6249909,
        "lng": 127.0188365,
        "name": "건강비타민약국",
        "remain_stat": "plenty",
        "stock_at": "2020/07/01 13:59:00",
        "type": "01"
      }
    ]
  };

  test('마스크 판매점 정보 확인', () async {
    final mockClient = MockClient((request) async {
      if (request.url.toString() == 'http://104.198.248.76:3000/mask') {
        return http.Response.bytes(utf8.encode(jsonEncode(mockData)), 200);
      }
      return http.Response('''{"message": "잘못된 요청"}''', 400);
    });

    MaskRepository maskRepository = MaskRepositoryImpl(maskApi: MaskApi(client: mockClient));
    final Mask mask = await maskRepository.getMask();

    expect(mask.stores.first.addr, '서울특별시 강북구 솔매로 38 (미아동)');
    expect(mask.stores.first.stockAt, '2020/07/02 18:05:00');
    expect(mask.stores.last.addr, '서울특별시 강북구 솔매로 59 (미아동)');
    expect(mask.stores.last.stockAt, '2020/07/01 13:59:00');
  });
}