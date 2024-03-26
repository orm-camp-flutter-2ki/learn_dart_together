import 'package:learn_dart_together/240326/repository/album/album_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  group('AlbumRepositoryImpl', () {
    test('상위 10개 앨범 메소드와 전체 앨범 목록에서 추출한 값이 같은지 확인', () async {
      // Given
      final albumRepository = AlbumRepositoryImpl();
      // When
      final albums = await albumRepository.getAlbums();
      final top10Albums = await albumRepository.getAlbumsTop10();

      // Then
      final sublistTitles = albums.sublist(0, 10).map((album) => album.title);
      final top10Titles = top10Albums.map((album) => album.title);

      expect(sublistTitles, equals(top10Titles));
    });
  });
}