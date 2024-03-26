import 'package:collection/collection.dart';
import 'package:learn_dart_together/240326/impl/album_repository_impl.dart';
import 'package:learn_dart_together/240326/model/album.dart';
import 'package:learn_dart_together/240326/model/comment.dart';
import 'package:test/test.dart';

void main() {
  group('Album Test', () {
    final repository = AlbumRepositoryImpl();
    List<Map<String, dynamic>> json = [
      {
        "userId": 1,
        "id": 1,
        "title": "quidem molestiae enim"
      },
      {
        "userId": 1,
        "id": 2,
        "title": "sunt qui excepturi placeat culpa"
      },
      {
        "userId": 1,
        "id": 3,
        "title": "omnis laborum odio"
      },
      {
        "userId": 1,
        "id": 4,
        "title": "non esse culpa molestiae omnis sed optio"
      },
      {
        "userId": 1,
        "id": 5,
        "title": "eaque aut omnis a"
      },
      {
        "userId": 1,
        "id": 6,
        "title": "natus impedit quibusdam illo est"
      },
      {
        "userId": 1,
        "id": 7,
        "title": "quibusdam autem aliquid et et quia"
      },
      {
        "userId": 1,
        "id": 8,
        "title": "qui fuga est a eum"
      },
      {
        "userId": 1,
        "id": 9,
        "title": "saepe unde necessitatibus rem"
      },
      {
        "userId": 1,
        "id": 10,
        "title": "distinctio laborum qui"
      }
    ];
    final expected = json.map((e) => Album.fromJson(e)).toList();

    test('getAlbums() 첫 번째 Index 비교', () async {
      final albums = await repository.getAlbums();

      expect(albums[0] == expected[0], true);
    });

    test('getAlbumsTop10() List 비교', () async {
      final albums = await repository.getAlbumsTop10();

      expect(albums.equals(expected), true);
    });

    test('getAlbumsTop10() List length 확인', () async {
      final albums = await repository.getAlbumsTop10();

      expect(albums.length == 10, true);
    });
  });
}