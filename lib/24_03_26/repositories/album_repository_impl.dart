import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_26/apis/album_api.dart';
import 'package:learn_dart_together/24_03_26/model/album.dart';
import 'package:learn_dart_together/24_03_26/repositories/album_repository.dart';

class AlbumRepositoryImpl implements AlbumRepository {
  final AlbumApi _albumApi;

  AlbumRepositoryImpl(this._albumApi);

  @override
  Future<List<Album>> getAlbums() async {
    return await _albumApi.getAlbums();
  }

  @override
  Future<List<Album>> getAlbumsTop10() async {
    final albums = await _albumApi.getAlbums();

    return albums.sorted((a, b) => b.id.compareTo(a.id)).sublist(0, 10);
  }
}
