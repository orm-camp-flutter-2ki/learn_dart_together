import '../model/albums.dart';

abstract interface class AlbumRepository {
  Future<List<Albums>> getAlbums();
  Future<List<Albums>> getAlbumsTop10();
}