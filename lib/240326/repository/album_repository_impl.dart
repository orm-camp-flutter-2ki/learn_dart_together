

import 'package:untitled2/240326/data_source/albums_api.dart';
import 'package:untitled2/240326/repository/album_repository.dart';
import '../model/albums.dart';

class AlbumRepositoryImpl implements AlbumRepository {

  @override
  Future<List<Albums>> getAlbums() async {
    AlbumsApi albumsApi = AlbumsApi();
    return albumsApi.getAlbums();
  }

  @override
  Future<List<Albums>> getAlbumsTop10() async {
    AlbumsApi albumsApi = AlbumsApi();
    final List<Albums> albums = await
    albumsApi.getAlbums();
    List<Albums> albumsTop10 =
    albums.sublist(0, 10);
    return albumsTop10;
  }
}