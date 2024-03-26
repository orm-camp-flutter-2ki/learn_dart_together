import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_26/model/dt_album.dart';
import 'package:test/test.dart';

void main() {
  group('Album 클래스의', () {
    test('fromJson()는 Json(Map)을 통해 Album을 생성한다.', () async {
      // Given
      final expected = Album(title: '불타는 종현', id: 2703, userId: 27);
      Map<String, dynamic> json = {
        'title': '불타는 종현',
        'id': 2703,
        'userId': 27
      };

      // When
      final result = Album.fromJson(json);

      // Then
      expect(result == expected, true);
    });

    test('toJson()는 Album로 Json(Map)을 생성한다.', () async {
      // Given
      final album = Album(title: '불타는 종현', id: 2703, userId: 27);
      Map<String, dynamic> expected = {
        'title': '불타는 종현',
        'id': 2703,
        'userId': 27
      };

      // When
      final result = album.toJson();

      // Then
      expect(MapEquality().equals(result, expected), true);
    });

    test('copyWith()는 Album을 통해 복사본 Album을 생성한다.', () async {
      // Given
      final origin = Album(title: '불타는 종현', id: 2703, userId: 27);
      // When
      final copied = Album.copyWith(origin: origin, title: '차가운 종현');

      // Then
      expect(copied == origin, false);
    });
  });
}
