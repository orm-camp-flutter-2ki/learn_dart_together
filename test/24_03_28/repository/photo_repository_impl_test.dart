import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_28/dto/photo_dto.dart';
import 'package:learn_dart_together/24_03_28/mapper/photo_mapper.dart';
import 'package:learn_dart_together/24_03_28/model/photo.dart';
import 'package:learn_dart_together/24_03_28/repository/impl/photo_repository_impl.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../mock/mock_photo_api_impl.dart';

void main() {
  group('PhotoRepositoryImpl 클래스', () {
    final photoApi = MockPhotoApiImpl();
    final photoRepository = PhotoRepositoryImpl(photoApi: photoApi);
    final photos = [
      PhotoDto(
          id: '1',
          type: 'article',
          title: 'This is an article',
          content: 'This is the content of the article.',
          url: 'unknown',
          caption: 'unknown',
          createdAt: '2020-01-01')
    ];
    setUp(() {
      reset(photoApi);
    });
    group('getPhotos 메소드는', () {
      test('api.getPhotos를 호출하고 받은 List<Photo> 인스턴스를 반환한다.', () async {
        // Given
        when(photoApi.getPhotos()).thenAnswer((_) async => photos);

        // When
        final result = await photoRepository.getPhotos();

        // Then
        expect(result.equals(photos.map((e) => e.toPhoto()).toList()), isTrue);
      });

      test('api.getPhotos를 1번 호출한다.', () async {
        // Given
        // Given
        when(photoApi.getPhotos()).thenAnswer((_) async => photos);

        // When
        await photoRepository.getPhotos();
        //
        // // Then
        verify(photoApi.getPhotos()).called(1);
      });
    });
  });
}
