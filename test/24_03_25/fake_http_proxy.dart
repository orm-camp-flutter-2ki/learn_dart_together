import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_19/-2/file_service.dart';

import 'package:learn_dart_together/24_03_25/http_proxy.dart';

class FakeHttpProxy implements HttpProxy {
  FileService fileService = FileService();

  @override
  Future<http.Response> get(Uri uri) async {
    return await _getResponse(uri);
  }

  Future<http.Response> _getResponse(Uri uri) async {
    return http.Response(
        await fileService.asyncReadFile(_getUriToPath(uri)), 200);
  }

  String _getUriToPath(Uri uri) {
    return switch (uri.toString()) {
      'https://jsonplaceholder.typicode.com/todos/1' =>
        'test/24_03_25/resource/todo.json',
      'https://jsonplaceholder.typicode.com/todos' =>
        'test/24_03_25/resource/todos.json',
      'https://jsonplaceholder.typicode.com/users' =>
        'test/24_03_25/resource/users.json',
      'http://swopenapi.seoul.go.kr/api/subway/sample/xml/realtimeStationArrival/0/5/%EC%84%9C%EC%9A%B8' =>
        'test/24_03_25/resource/subway_info.xml',
      'https://www.alphavantage.co/query?function=LISTING_STATUS&apikey=demo' =>
        'test/24_03_25/resource/listing_status.csv',
      'https://jsonplaceholder.typicode.com/comments' =>
        'test/24_03_26/resource/comments.json',
      'https://jsonplaceholder.typicode.com/albums' =>
        'test/24_03_26/resource/albums.json',
      'https://jsonplaceholder.typicode.com/albums/1' =>
        'test/24_03_26/resource/album.json',
      _ => throw Exception('Unknown URI: $uri')
    };
  }
}
