import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_26/model/dt_user.dart';
import 'package:test/test.dart';

void main() {
  group('Address 클래스의', () {
    test('fromJson()는 Json(Map)을 통해 Address를 생성한다.', () async {
      // Given
      final expected = Address(city: 'Seoul', geo: Geo(lat: '37.4586', lng: '128.5468'), street: '동일로', suite: '138', zipcode: '18388');
      Map<String, dynamic> json = {
        'city': 'Seoul',
        'geo': {
          'lat': '37.4586',
          'lng': '128.5468'
        },
        'street': '동일로',
        'suite': '138',
        'zipcode': '18388'
      };

      // When
      final result = Address.fromJson(json);

      // Then
      expect(result == expected, true);
    });

    test('toJson()는 Address로 Json(Map)을 생성한다.', () async {
      // Given
      final address = Address(city: 'Seoul', geo: Geo(lat: '37.4586', lng: '128.5468'), street: '동일로', suite: '138', zipcode: '18388');
      Map<String, dynamic> expected = {
        'city': 'Seoul',
        'geo': {
          'lat': '37.4586',
          'lng': '128.5468'
        },
        'street': '동일로',
        'suite': '138',
        'zipcode': '18388'
      };

      // When
      final result = address.toJson();

      // Then
      expect(DeepCollectionEquality().equals(result, expected), true);
    });

    test('copyWith()는 Address를 통해 복사본 Address를 생성한다.', () async {
      // Given
      final origin = Address(city: 'Seoul', geo: Geo(lat: '37.4586', lng: '128.5468'), street: '동일로', suite: '138', zipcode: '18388');
      // When
      final copied = Address.copyWith(origin: origin, city: 'Daegu');

      // Then
      expect(copied == origin, false);
    });
  });
}
