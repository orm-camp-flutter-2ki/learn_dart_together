import '../datamodel/album.dart';
import '../datamodel/comment.dart';

abstract interface class AlbumRepository{
  Future<List<Album>> getAlbums();
  Future<List<Album>> getAlbumsTop10();
}