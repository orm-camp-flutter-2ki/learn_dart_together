import 'package:learn_dart_together/240326/data_source/album.dart';
import 'package:learn_dart_together/240326/repository/album_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  test('AlbumRepositoryImpl.getAlbums 메소드를 호출한다', () async {
    // Given
    final sol = Album(userId: 1, id: 1, title: "quidem molestiae enim");

    // When
    final result = await AlbumRepositoryImpl().getAlbums();

    // Then
    expect(result.first, sol);
  });
  test('AlbumRepositoryImpl.getAlbumsTop10 메소드를 호출한다', () async {
    // Given
    final sol = Album(userId: 1, id: 1, title: "quidem molestiae enim");

    // When
    final result = await AlbumRepositoryImpl().getAlbumsTop10();

    // Then
    expect(result.first, sol);
  });
}
