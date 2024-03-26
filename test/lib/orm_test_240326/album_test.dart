import 'package:learn_dart_together/orm_240326/00_data_repository/albums_repository.dart';
import 'package:learn_dart_together/orm_240326/00_data_repository/albums_repository_impl.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('albums test', () {
    test('albums getalbums', () async {
      final AlbumsRepository albumstest = AlbumsRepositoryImpl();
      final results = await albumstest.getAlbums();

      print(results);
    });
    test('albumTop10', () async {
      final AlbumsRepository albumstop10 = AlbumsRepositoryImpl();
      final result = await albumstop10.getAlbumsTop10();

      print(result);
    });
  });
}
