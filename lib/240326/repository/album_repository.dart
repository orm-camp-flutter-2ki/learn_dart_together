import 'package:learn_dart_together/240326/data_source/json_place_holder_api.dart';

import '../model/album.dart';

abstract interface class AlbumRepository {
  Future<List<Album>> getAlbums();

  Future<List<Album>> getAlbumsTop10();
}

class AlbumRepositoryImpl implements AlbumRepository {
  final JsonPlaceHolderApi _api = JsonPlaceHolderApi();

  @override
  Future<List<Album>> getAlbums() async {
    try {
      return await _api.getAlbums();
    } catch (e) {
      return [];
    }
  }

  @override
  Future<List<Album>> getAlbumsTop10() async {
    final albums = await _api.getAlbums();
    return albums.take(10).toList();
  }

}