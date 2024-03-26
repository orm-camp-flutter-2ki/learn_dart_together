import '../../model/albumModel.dart';

abstract interface class AlbumRepository {
  Future<List<AlbumModel>> getAlbums();
  Future<List<AlbumModel>> getAlbumsTop10();
}