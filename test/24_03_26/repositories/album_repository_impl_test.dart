import 'package:learn_dart_together/24_03_26/apis/album_api.dart';
import 'package:learn_dart_together/24_03_26/model/album.dart';
import 'package:learn_dart_together/24_03_26/repositories/Album_repository_impl.dart';
import 'package:test/test.dart';

import '../../24_03_25/fake_http_proxy.dart';

void main() {
  group('AlbumRepositoryImpl 클래스', () {
    final AlbumRepositoryImpl albumRepository =
        AlbumRepositoryImpl(AlbumApi(http: FakeHttpProxy()));
    group('getAlbums 메소드는', () {
      test('AlbumApi.getAlbums 메소드를 호출하고 Album 리스트를 반환한다.', () async {
        // Given
        final expected =
            Album(userId: 1, id: 1, title: "quidem molestiae enim");
        final expectedSize = 100;

        // When
        final result = await albumRepository.getAlbums();

        // Then
        expect(result.first, expected);
        expect(result.length, expectedSize);
      });
    });

    group('getAlbumsTop10 메소드는', () {
      test('AlbumApi.getAlbums 메소드를 호출하고 id값 내림차순으로 10개를 선정해서 반환한다.', () async {
        // Given
        final expected = Album(userId: 10, id: 100, title: "enim repellat iste");

        // When
        final result = await albumRepository.getAlbumsTop10();

        // Then
        expect(result.first, expected);
      });
    });
  });
}
