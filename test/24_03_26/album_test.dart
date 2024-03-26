import 'package:learn_dart_together/24_03_26/repository/album_repository_impl.dart';
import 'package:learn_dart_together/24_03_26/repository/album_ropository.dart';
import 'package:test/test.dart';

void main() {
  AlbumRepository albumRopo = AlbumRepositoryImpl();
  test('Album getAlbums() test', () async {
    final result = await albumRopo.getAlbums();
    print(result);
  });

  test('Album getAlbumsTop10() test', () async {
    final result = await albumRopo.getAlbumsTop10();
    print(result);
  });
}