import 'package:learn_dart_together/240326/data_source/album.dart';
import 'package:learn_dart_together/240326/model/album_api.dart';
import 'package:learn_dart_together/240326/repository/album_repository.dart';

class AlbumRepositoryImpl implements AlbumRepository {
  @override
  Future<List<Album>> getAlbums() async {
    AlbumApi albumapi = AlbumApi();
    final albums = await albumapi.getAlbums();
    return albums;
  }

  @override
  Future<List<Album>> getAlbumsTop10() async {
    AlbumApi albumapi = AlbumApi();
    final albums = await albumapi.getAlbums();
    return albums.where((album) => album.id < 11).toList();
  }
}
