import 'package:learn_dart_together/240326/data_source/album_api.dart';
import 'package:learn_dart_together/240326/datamodel/album.dart';

import 'albumRepository.dart';

class AlbumRepositoryImpl implements AlbumRepository {

  @override
  Future<List<Album>> getAlbums() async {
    AlbumApi albumApi = AlbumApi();
    return albumApi.getAlbums();
  }

  @override
  Future<List<Album>> getAlbumsTop10() async{
    AlbumApi albumApi = AlbumApi();
    final List<Album> albums = await albumApi.getAlbums();
    List<Album> albumsTop10 =  albums.sublist(0, 10);
    return albumsTop10;
  }
}