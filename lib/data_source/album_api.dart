import 'package:http/http.dart' as http;

import '../http/http_service.dart';

class AlbumApi {
  Future<String> getAlbums() async {
    return await HttpService().get('https://jsonplaceholder.typicode.com/albums');
  }
}
