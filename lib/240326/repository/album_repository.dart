import 'package:learn_dart_together/240326/data_source/album_api.dart';
import 'package:learn_dart_together/240326/model/album.dart';

abstract interface class AlbumRepository {
  Future<List<Album>> getAlbums();

  Future<Album> getAlbum(int id);
}

class AlbumRepositoryImpl implements AlbumRepository {
  final AlbumApi _api = AlbumApi();

  @override
  Future<List<Album>> getAlbums() {
    return _api.getAlbums();
  }

  @override
  Future<Album> getAlbum(int id) {
    return _api.getAlbum(id);
  }

  Future<List<Album>> getAlbumsTop10() async {
    final albums = await getAlbums();
    return albums.sublist(0, 10);
  }
}
