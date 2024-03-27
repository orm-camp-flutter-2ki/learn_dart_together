import 'package:collection/collection.dart';
import 'package:learn_dart_together/240326/model/album.dart';
import 'package:learn_dart_together/240326/respository_impl/album_repo_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() async {
  AlbumRepositoryImpl repositoryImpl = AlbumRepositoryImpl();

  group('과제 2. Repository 작성 연습 2', () {
    test('Future<List<Album>> getAlbums() 생성', () async {
      final data = await repositoryImpl.getAlbums();

      final expectedResult = {
        "userId": 1,
        "id": 1,
        "title": "quidem molestiae enim"
      };

      expect(
        DeepCollectionEquality().equals(
            Album(data.first.userId, data.first.id, data.first.title).toJson(),
            expectedResult),
        true,
      );
    });

    test('Future<List<Album>> getAlbumsTop10() 생성', () async {
      // When
      final data = await repositoryImpl.getAlbumsTop10();
      final actualData = data.length;
      final expectedResult = 10;

      // Then
      expect(actualData, expectedResult);
    });
  });
}
