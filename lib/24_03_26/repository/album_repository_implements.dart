import 'package:learn_dart_together/24_03_26/data_source/album_api.dart';
import 'package:learn_dart_together/24_03_26/model/album.dart';

import 'album_repository.dart';

class AlbumRepositoryImplements implements AlbumRepository {
  final AlbumApi _api = AlbumApi();

  @override
  Future<List<Album>> getAlbums() {
    return _api.getAlbums();
  }

  @override
  Future<List<Album>> getAlbumsTop10() {
    return _api.getAlbumsTop10();
  }
}
