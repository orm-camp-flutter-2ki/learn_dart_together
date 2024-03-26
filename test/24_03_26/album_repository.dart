import 'package:learn_dart_together/24_03_26/model/dt_album.dart';
import 'package:learn_dart_together/24_03_26/repository/album_repository.dart';
import 'package:test/test.dart';

void main() {
  group('AlbumRepository 인터페이스의', () {
    group('구현체 AlbumRepositoryImpl 클래스의', () {
      // Future<List<Album>> getAlbums() async
      test('getAlbums()는 서버에 요청한 json을 List<Album>으로 반환한다.', () async {
        // Given
        final AlbumRepository repository = AlbumRepositoryImpl();
        final expected =
            Album(id: 1, title: 'quidem molestiae enim', userId: 1);

        // When
        final albums = await repository.getAlbums();

        // Then
        expect(albums[0] == expected, true);
      });

      // Future<List<Album>> getAlbumsTop10() async
      test('getAlbumsTop10()는 서버에 요청한 json중, 상위 10개의 데이터만 List<Album>으로 반환한다.', () async {
        // Given
        final AlbumRepository repository = AlbumRepositoryImpl();
        final expected =
        Album(id: 1, title: 'quidem molestiae enim', userId: 1);

        // When
        final albums = await repository.getAlbumsTop10();

        // Then
        expect(albums[0] == expected, true);
      });
    });
  });
}
