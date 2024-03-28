import '../http/http_core.dart';

class AlbumApi {
  Future<String> getAlbums() async {
    return await HttpService().get(albumsUrl);
  }
}
