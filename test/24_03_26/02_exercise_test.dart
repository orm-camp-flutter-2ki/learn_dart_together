import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_26/Model/album.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_26/dataSource/album_api.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_26/repository.dart';
import 'package:test/test.dart';

void main() {
  group('album test', () {
    test('albums get test', () async {
      final List<Album> result = await AlbumApiImpl().getAlbums();
      expect(result.length, 100);
    });

    test('album top 10 test', () async {
      final List<Album> resultTop10 = await AlbumApiImpl().getAlbumsTop10();
      expect(resultTop10.length, 10);
    });
  });
}
