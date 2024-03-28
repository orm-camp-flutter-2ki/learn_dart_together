import 'package:http/testing.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';
import 'package:untitled2/240327/data_source/mask_api.dart';
import 'package:untitled2/240327/model/mask.dart';
import 'package:untitled2/240327/repository/mask_repository.dart';
import 'package:untitled2/240327/repository/mask_repository_impl.dart';

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

  test('practice1', () async {
    final mockClient = MockClient((request) async {
      if (request.url.toString() == 'http://104.198.248.76:3000/mask') {
        return http.Response.bytes(utf8.encode(jsonEncode(mockMap)), 200);
        ; // http.Response
      }
      return http.Response('''{"message":"오류"}''', 400);
    });
    MaskRepository maskRepository =
    MaskRepositoryImpl(client: MaskApi(client: mockClient));
    final test = await maskRepository.getMasks();
    Mask mask = Mask(
        addr: '서울특별시 강북구 솔매로 38 (미아동)',
        code: '11817488',
        created_at: '2020/07/03 11:00:00',
        lat: 37.6254369,
        lng: 127.0164096,
        name: '승약국',
        remain_stat: 'plenty',
        stock_at: '2020/07/02 18:05:00',
        type: '01');
    expect(mask == test[0], true);
  });
}