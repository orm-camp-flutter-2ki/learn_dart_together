import '../model/album_model.dart';

abstract interface class AlbumRepository {
  // http.get()을 사용하여 웹 서버에서 데이터를 가져오는 메서드
  Future<List<Album>> getAlbums();

  // http.get()을 사용하여 상위 10개 데이터를 가져오는 메서드
  Future<List<Album>> getAlbumsTop10();
}
