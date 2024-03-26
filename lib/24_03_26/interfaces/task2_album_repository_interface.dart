import '../model_class/task2_album.dart';

abstract interface class AlbumRepository {
  Future<List<Album>> getAlbums();
  Future<List<Album>> getAlbumsTop10();
}
