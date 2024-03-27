import '../vo/albums.dart';

abstract interface class AlbumRepository {
  Future<dynamic> getConnect();

  Future<List<Albums>> getAlbums();

  Future<List<Albums>> getAlbumsTop10();
}
