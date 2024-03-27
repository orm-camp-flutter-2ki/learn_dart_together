import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_27/mask.dart';
import 'package:learn_dart_together/24_03_27/mask_api.dart';
import 'package:learn_dart_together/24_03_27/mask_repositoryImpl.dart';
import 'package:test/test.dart';
import 'package:http/testing.dart';

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
    ]
  };

  test('마스크 판매점 정보 확인', () async {
    final mockClient = MockClient((request) async {
      if (request.url.toString() == 'http://104.198.248.76:3000/mask') {
        return http.Response.bytes(utf8.encode(jsonEncode(mockData)), 200);
      }
      return http.Response('''{"message": "잘못된 요청"}''', 400);
    });

    MaskRepository maskRepository =
        MaskRepositoryImpl(maskApi: MaskApi(client: mockClient));
    final Mask mask = await maskRepository.getMask();

    expect(mask.stores.first.addr, '서울특별시 강북구 솔매로 38 (미아동)');
    expect(mask.stores.first.stockAt, '2020/07/02 18:05:00');
  });
}
