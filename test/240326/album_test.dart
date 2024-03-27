import 'package:dart_cli_practice/240326/model/album.dart';
import 'package:dart_cli_practice/240326/repository/album_repository.dart';
import 'package:dart_cli_practice/240326/repository/album_repository_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  AlbumRepository albumRepository = AlbumRepositoryImpl();

  group('AlbumRepositoryImpl 는', () {
    test('getAlbums() 메소드로 전체 Album 리스트를 가져온다.', () async {
      final expectAlbum = Album(
        userId: 1,
        id: 1,
        title: 'quidem molestiae enim',
      );
      final expectedListLength = 100;

      final actualAlbumList = await albumRepository.getAlbums();

      expect(actualAlbumList[0], equals(expectAlbum));
      expect(actualAlbumList.length, equals(expectedListLength));
    });

    test('getAlbumTop10() 메소드로 상위 10개 Album 리스트를 가져온다.', () async {
      final expectedListLength = 10;

      final actualAlbumList = await albumRepository.getAlbumTop10();

      expect(actualAlbumList.length, equals(expectedListLength));
    });
  });
}
