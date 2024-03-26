import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_26/model/dt_photo.dart';
import 'package:test/test.dart';

void main() {
  group('Photo 클래스의', () {
    test('fromJson()는 Json(Map)을 통해 Photo을 생성한다.', () async {
      // Given
      final expected = Photo(
          id: 1,
          title: 'accusamus beatae ad facilis cum similique qui sunt',
          albumId: 1,
          thumbnailUrl: 'https://via.placeholder.com/150/92c952',
          url: 'https://via.placeholder.com/600/92c952');
      Map<String, dynamic> json = {
        'id': 1,
        'title': 'accusamus beatae ad facilis cum similique qui sunt',
        'albumId': 1,
        'thumbnailUrl': 'https://via.placeholder.com/150/92c952',
        'url': 'https://via.placeholder.com/600/92c952'
      };

      // When
      final result = Photo.fromJson(json);

      // Then
      expect(result == expected, true);
    });

    test('toJson()는 Photo로 Json(Map)을 생성한다.', () async {
      // Given
      final photo = Photo(
          id: 1,
          title: 'accusamus beatae ad facilis cum similique qui sunt',
          albumId: 1,
          thumbnailUrl: 'https://via.placeholder.com/150/92c952',
          url: 'https://via.placeholder.com/600/92c952');
      Map<String, dynamic> expected = {
        'id': 1,
        'title': 'accusamus beatae ad facilis cum similique qui sunt',
        'albumId': 1,
        'thumbnailUrl': 'https://via.placeholder.com/150/92c952',
        'url': 'https://via.placeholder.com/600/92c952'
      };

      // When
      final result = photo.toJson();

      // Then
      expect(MapEquality().equals(result, expected), true);
    });

    test('copyWith()는 Photo을 통해 복사본 Photo을 생성한다.', () async {
      // Given
      final origin = Photo(
          id: 1,
          title: 'accusamus beatae ad facilis cum similique qui sunt',
          albumId: 1,
          thumbnailUrl: 'https://via.placeholder.com/150/92c952',
          url: 'https://via.placeholder.com/600/92c952');
      // When
      final copied = Photo.copyWith(origin: origin, title: 'strange');

      // Then
      expect(copied == origin, false);
    });
  });
}
