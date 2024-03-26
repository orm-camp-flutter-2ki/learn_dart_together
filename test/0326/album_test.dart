import 'package:learn_dart_together/0326/data_source/album_repository.dart';
import 'package:learn_dart_together/0326/data_source/album_repository_impl.dart';
import 'package:learn_dart_together/0326/model/album.dart';
import 'package:test/test.dart';

void main() {
  AlbumRepository albumRepository = AlbumRepositoryImpl();

  test('모든 album 요청', () async {
     List<Album> albums = await albumRepository.getAlbums();
     
     expect(albums.length, 100);
  });

  test('상위 10개 album 확인', () async {
    List<Album> albumsTop10 = await albumRepository.getAlbumsTop10();

    expect(albumsTop10.length, 10);
    expect(albumsTop10.last.userId, 1);
    expect(albumsTop10.last.id, 10);
    expect(albumsTop10.last.title, 'distinctio laborum qui');
  });
}