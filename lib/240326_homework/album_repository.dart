import 'package:collection/collection.dart';

import 'api/album_api.dart';
import 'model/album.dart';

void main() async {
  List<Album> albumById = await AlbumRepositoryImpl().getAlbumsByUserId(1);
  List<Album> albumTop10 = await AlbumRepositoryImpl().getAlbumsTop10();
}

class AlbumRepositoryImpl implements AlbumRepository {
  final AlbumApi _api = AlbumApi();

  Future<List<Album>> getAlbumsByUserId(int userId) async {
    List<Album> data = await _api.getAlbums();
    return data.where((element) => element.userId == userId).toList();
  }

  @override
  Future<List<Album>> getAlbums() async {
    List<Album> data = await _api.getAlbums();
    return data;
  }

  @override
  Future<List<Album>> getAlbumsTop10() async {
    List<Album> data = await _api.getAlbums();
    return data.slice(0, 10);
  }
}

abstract interface class AlbumRepository {
  Future<List<Album>> getAlbums();

  Future<List<Album>> getAlbumsTop10();
}
