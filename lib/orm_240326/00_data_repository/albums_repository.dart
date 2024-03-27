import '../model/albums.dart';

abstract interface class AlbumsRepository {
  Future<List<Albums>> getAlbums();

  Future<List<Albums>> getAlbumsTop10();
}
