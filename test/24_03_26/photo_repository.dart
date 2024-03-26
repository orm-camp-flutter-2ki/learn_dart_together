import 'package:learn_dart_together/24_03_26/model/dt_photo.dart';
import 'package:learn_dart_together/24_03_26/repository/photo_repository.dart';
import 'package:test/test.dart';

void main() {
  group('PhotoRepository 인터페이스의', () {
    group('구현체 PhotoRepositoryImpl 클래스의', () {
      // Future<List<Photo>> getPhotos(int albumId) async
      test('getPhotos(int albumId)는 서버에 요청한 json중, "albumId"가 일치하는 데이터만 List<Photo>으로 반환한다.', () async {
        // Given
        final PhotoRepository repository = PhotoRepositoryImpl();
        final expected = Photo(
            id: 1,
            title: 'accusamus beatae ad facilis cum similique qui sunt',
            albumId: 1,
            thumbnailUrl: 'https://via.placeholder.com/150/92c952',
            url: 'https://via.placeholder.com/600/92c952');

        // When
        final photos = await repository.getPhotos(1);

        // Then
        expect(photos[0] == expected, true);
      });
    });
  });
}
