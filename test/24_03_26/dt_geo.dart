import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_26/model/dt_user.dart';
import 'package:test/test.dart';

void main() {
  group('Geo 클래스의', () {
    test('fromJson()는 Json(Map)을 통해 Geo를 생성한다.', () async {
      // Given
      final expected = Geo(lat: '37.4586', lng: '128.5468');
      Map<String, dynamic> json = {
        'lat': '37.4586',
        'lng': '128.5468'
      };

      // When
      final result = Geo.fromJson(json);

      // Then
      expect(result == expected, true);
    });

    test('toJson()는 Geo로 Json(Map)을 생성한다.', () async {
      // Given
      final geo = Geo(lat: '37.4586', lng: '128.5468');
      Map<String, dynamic> expected = {
        'lat': '37.4586',
        'lng': '128.5468'
      };

      // When
      final result = geo.toJson();

      // Then
      expect(MapEquality().equals(result, expected), true);
    });

    test('copyWith()는 Geo를 통해 복사본 Geo를 생성한다.', () async {
      // Given
      final origin = Geo(lat: '37.4586', lng: '128.5468');
      // When
      final copied = Geo.copyWith(origin: origin, lat: '34.4586');

      // Then
      expect(copied == origin, false);
    });
  });
}
