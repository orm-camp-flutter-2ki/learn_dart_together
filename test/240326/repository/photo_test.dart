import 'package:test/test.dart';
import 'package:learn_dart_together/240326/repository/photo/photo_repository_impl.dart';

void main() {
  group('PhotoRepositoryImpl', () {
    test('getPhotos', () async {
      // Given
      final photoRepository = PhotoRepositoryImpl();
      final albumId = 1; // 테스트할 albumId

      // When
      final photos = await photoRepository.getPhotos(albumId);

      // Then
      // 반환된 사진 목록이 비어있지 않은지 확인
      expect(photos.isNotEmpty, true);

      // 모든 사진의 albumId가 올바른지 확인
      for (final photo in photos) {
        expect(photo.albumId, albumId);
      }
    });
  });
}
