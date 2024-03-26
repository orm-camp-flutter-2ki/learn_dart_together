import 'package:learn_dart_together/240326/data_source/album_api.dart';
import 'package:learn_dart_together/240326/model/album.dart';
import 'package:learn_dart_together/240326/repository/album_repository.dart';

class AlbumRepositoryImpl implements AlbumRepository {
  final AlbumApi _api1 = AlbumApi();
  final AlbumApi _api2 = AlbumApi();

  @override
  Future<List<Album>> getAlbums() {
    return _api1.getAlbums();
  }

  @override
  Future<List<Album>> getAlbumsTop10() async {
    List<Album> albums = await _api2.getAlbums();
    return albums.sublist(0, 10);
  }
}
