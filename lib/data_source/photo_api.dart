import '../http/http_core.dart';

class PhotoApi {

  Future<String> getPhotos(int albumId) async {
    return await HttpService().get(('$photosUrl?albumId=$albumId'));
  }
}
