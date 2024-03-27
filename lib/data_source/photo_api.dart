import '../http/http_service.dart';

class PhotoApi {
  final baseUrl = 'https://jsonplaceholder.typicode.com/photos';

  Future<String> getPhotos(int albumId) async {
    return await HttpService().get(('$baseUrl?albumId=$albumId'));
  }
}
