import 'package:dart_cli_practice/240326/data_source/album_api.dart';
import 'package:dart_cli_practice/240326/model/album.dart';
import 'package:dart_cli_practice/240326/repository/album_repository.dart';

class AlbumRepositoryImpl implements AlbumRepository {
  final api = AlbumApi();

  @override
  Future<List<Album>> getAlbums() async {
    return await api.getAlbums();
  }

  @override
  Future<List<Album>> getAlbumTop10() async {
    final albums = await api.getAlbums();

    return albums.sublist(0, 10);
  }
}
