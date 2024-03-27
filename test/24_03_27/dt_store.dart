import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_26/model/dt_photo.dart';
import 'package:learn_dart_together/24_03_27/mask.dart';
import 'package:test/test.dart';

void main() {
  group('Store 클래스의', () {
    test('fromJson()는 Json(Map)을 통해 Store을 생성한다.', () async {
      // Given
      final expected = Store(
          addr: '서울특별시 강북구 솔매로 38 (미아동)',
          code: '11817488',
          created_at: '2020/07/03 11:00:00',
          lat: 37.6254369,
          lng: 127.0164096,
          name: '승약국',
          remain_stat: 'plenty',
          stock_at: '2020/07/02 18:05:00',
          type: '01');
      Map<String, dynamic> json = {
        'addr': '서울특별시 강북구 솔매로 38 (미아동)',
        'code': '11817488',
        'created_at': '2020/07/03 11:00:00',
        'lat': 37.6254369,
        'lng': 127.0164096,
        'name': '승약국',
        'remain_stat': 'plenty',
        'stock_at': '2020/07/02 18:05:00',
        'type': '01'
      };

      // When
      final result = Store.fromJson(json);

      // Then
      expect(result == expected, isTrue);
    });

    test('toJson()는 Store로 Json(Map)을 생성한다.', () async {
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
      Map<String, dynamic> expected = {
        'addr': '서울특별시 강북구 솔매로 38 (미아동)',
        'code': '11817488',
        'created_at': '2020/07/03 11:00:00',
        'lat': 37.6254369,
        'lng': 127.0164096,
        'name': '승약국',
        'remain_stat': 'plenty',
        'stock_at': '2020/07/02 18:05:00',
        'type': '01'
      };

      // When
      final result = store.toJson();

      // Then
      expect(MapEquality().equals(result, expected), isTrue);
    });

    test('copyWith()는 Store을 통해 복사본 Store을 생성한다.', () async {
      // Given
      final origin = Store(
          addr: '서울특별시 강북구 솔매로 38 (미아동)',
          code: '11817488',
          created_at: '2020/07/03 11:00:00',
          lat: 37.6254369,
          lng: 127.0164096,
          name: '승약국',
          remain_stat: 'plenty',
          stock_at: '2020/07/02 18:05:00',
          type: '01');
      // When
      final copied = Store.copyWith(origin: origin, code: '123456');

      // Then
      expect(copied == origin, isFalse);
    });
  });
}
