import 'package:learn_dart_together/240326/data_source/album_api.dart';
import 'package:learn_dart_together/240326/model/album.dart';
import 'package:learn_dart_together/240326/repository/album_repository.dart';

class AlbumRepositoryImpl implements AlbumRepository {
  AlbumApi albumApi = AlbumApi();

  @override
  Future<List<Album>> getAlbums() async {
    return await albumApi.getAlbums();
  }

  @override
  Future<List<Album>> getAlbumsTop10() async {
    final getData = await albumApi.getAlbums();
    return getData.sublist(0, 10);
  }

}