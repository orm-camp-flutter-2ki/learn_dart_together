import 'package:learn_dart_together/24_03_26/model/album.dart';

import '../data_source/album_api.dart';
import '../repository/album_ropository.dart';

class AlbumRepositoryImpl implements AlbumRepository {
  final AlbumApi _api = AlbumApi();

  @override
  Future<List<Album>> getAlbums() async {
    return await _api.getAlbums();
  }

  @override
  Future<List<Album>> getAlbumsTop10() async{
    return await _api.getAlbumTop10();
  }
}
