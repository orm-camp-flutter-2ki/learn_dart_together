import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_27/mask.dart';
import 'package:test/test.dart';

void main() {
  group('Mask 클래스의', () {
    test('fromJson()는 Json(Map)을 통해 Mask을 생성한다.', () async {
      // Given
      final store = Store(
          addr: '서울특별시 강북구 솔매로 38 (미아동)',
          code: '11817488',
          created_at: '2020/07/03 11:00:00',
          lat: 37.6254369,
          lng: 127.0164096,
          name: '승약국',
          remain_stat: 'plenty',
          stock_at: '2020/07/02 18:05:00',
          type: '01');
      final expected = Mask(count: 222, stores: [store]);
      Map<String, dynamic> json = {
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

      // When
      final result = Mask.fromJson(json);

      // Then
      expect(result == expected, true);
    });

    test('toJson()는 Mask로 Json(Map)을 생성한다.', () async {
      // Given
      final store = Store(
          addr: '서울특별시 강북구 솔매로 38 (미아동)',
          code: '11817488',
          created_at: '2020/07/03 11:00:00',
          lat: 37.6254369,
          lng: 127.0164096,
          name: '승약국',
          remain_stat: 'plenty',
          stock_at: '2020/07/02 18:05:00',
          type: '01');
      final mask = Mask(count: 222, stores: [store]);
      Map<String, dynamic> expected = {
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

      // When
      final result = mask.toJson();

      // Then
      expect(MapEquality().equals(result, expected), true);
    });

    test('copyWith()는 Mask을 통해 복사본 Mask을 생성한다.', () async {
      // Given
      final store = Store(
          addr: '서울특별시 강북구 솔매로 38 (미아동)',
          code: '11817488',
          created_at: '2020/07/03 11:00:00',
          lat: 37.6254369,
          lng: 127.0164096,
          name: '승약국',
          remain_stat: 'plenty',
          stock_at: '2020/07/02 18:05:00',
          type: '01');
      final origin = Mask(count: 222, stores: [store]);
      // When
      final copied = Mask.copyWith(origin: origin, count: 111);

      // Then
      expect(copied == origin, false);
    });
  });
}
