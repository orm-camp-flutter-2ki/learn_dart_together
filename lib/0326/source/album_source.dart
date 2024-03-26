import 'package:learn_dart_together/0326/model/album_model.dart';
import 'package:learn_dart_together/0326/repository/album_repository.dart';
import 'package:learn_dart_together/0326/source/album_api.dart';

class AlbumRepositoryImpl implements AlbumRepository {
  final _albumApi = AlbumsApi();

  @override
  Future<List<Album>> getAlbums() async {
    return _albumApi.getAlbumsApi();
  }

  @override
  Future<List<Album>> getAlbumsTop10() async {
    final albumTop10 = await _albumApi.getAlbumsApi();
    return albumTop10.sublist(0, 11);
  }
}
