import 'package:learn_dart_together/24_03_28/dto/photo_dto.dart';
import 'package:learn_dart_together/24_03_28/mapper/photo_mapper.dart';
import 'package:learn_dart_together/24_03_28/model/photo.dart';
import 'package:test/test.dart';

void main() {
  group('PhotoDtoMapper 확장함수의', () {
    // Photo toPhoto()
    group('toPhoto()는', () {
      test('PhotoDto를 Photo로 반환한다.', () {
        // Given
        final photoDto1 = PhotoDto.fromJson({
          'id': 1,
          'type': 'article',
          'title': 'This is an article',
          'content': 'This is the content of the article.',
          'created_at': '2020-01-01'
        });
        final photoDto2 = PhotoDto.fromJson({
          'id': '1',
          'title': 'This is an article',
          'content': 'This is the content of the article.',
          'created_at': '2020-01-01'
        });
        final photoDto3 = PhotoDto.fromJson({
          'id': 1,
          'type': null,
          'title': 'This is an article',
          'content': 'This is the content of the article.',
          'created_at': '2020-01-01'
        });

        final expected1 = Photo(
            id: 1,
            type: PhotoType.article,
            title: 'This is an article',
            content: 'This is the content of the article.',
            createdAt: DateTime.parse('2020-01-01'));
        final expected2 = Photo(
            id: 1,
            type: PhotoType.unknown,
            title: 'This is an article',
            content: 'This is the content of the article.',
            createdAt: DateTime.parse('2020-01-01'));
        final expected3 = Photo(
            id: 1,
            type: PhotoType.unknown,
            title: 'This is an article',
            content: 'This is the content of the article.',
            createdAt: DateTime.parse('2020-01-01'));

        // When
        final photo1 = photoDto1.toPhoto();
        final photo2 = photoDto2.toPhoto();
        final photo3 = photoDto3.toPhoto();

        // Then
        expect(expected1 == photo1, isTrue);
        expect(expected2 == photo2, isTrue);
        expect(expected3 == photo3, isTrue);
      });

      test('유효하지 않은 PhotoDto에 대해 에러를 발생시킨다.', () {
        //Given
        final photoDto = PhotoDto.fromJson({
          'id': 1,
          'type': 'article',
          'title': null,
          'content': 'This is the content of the article.',
          'created_at': '2020-01-01'
        });

        // When
        photosError() => photoDto.toPhoto();

        // Then
        expect(photosError, throwsException);
      });
    });
  });
}
