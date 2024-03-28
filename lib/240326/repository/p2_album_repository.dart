import '../data_source/p2_album_api.dart';
import '../model_class/p2_model_class.dart';

class AlbumRepository {
  final AlbumApi _api = AlbumApi();

  Future<List<Album>> getAlbums() {
    return _api.getAlbumsApi();
  }

  Future<List<Album>> getAlbumsTop10() {
    return _api.getAlbumsApiTop10();
  }
}
