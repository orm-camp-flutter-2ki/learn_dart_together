import '../data_source/album_api.dart';
import '../model_class/01_album_class.dart';
import '../repository/01_album_repository.dart';

class AlbumRepositoryImpl implements AlbumRepository {
  final AlbumApi _api = AlbumApi();

  @override
  Future<List<Album>> getAlbums() async {
    return await _api.Getalbums();
  }

  @override
  Future<List<Album>> getAlbumsTop10() async {
    List<Album> data = await _api.getAlbums();
    return data.slice(0, 10);
  }
}
