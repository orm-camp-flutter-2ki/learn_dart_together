import 'package:test/test.dart';
import 'package:learn_dart_together/24_03_26/model_class/task2_album.dart';
import 'package:learn_dart_together/24_03_26/repository/task2_album_repository.dart';

void main() {
  group('AlbumRepositoryImpl 테스트', () {
    test('getAlbums 은 albums의 list를 리턴하는가?', () async {
      final repository = AlbumRepositoryImpl();

      final albums = await repository.getAlbums();

      expect(albums, isA<List<Album>>());
    });

    // getAlbumsTop10 메서드에 대해서는 반환되는 리스트의 길이가 10 이하임을 검증해보자.
    test('getAlbumsTop10 은 top 10 앨범들의 리스트를 반환하는가?', () async {
      final repository = AlbumRepositoryImpl();

      final albumsTop10 = await repository.getAlbumsTop10();

      expect(albumsTop10, isA<List<Album>>());
      expect(albumsTop10.length, lessThanOrEqualTo(10));
    });
  });
}
