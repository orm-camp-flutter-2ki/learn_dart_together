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
    return http.Response(await fileService.asyncReadFile(_getUriToPath(uri)), 200);
  }

  String _getUriToPath(Uri uri) {
    return switch (uri.toString()) {
      'https://jsonplaceholder.typicode.com/todos/1' => 'test/24_03_25/resource/todo.json',
      'https://jsonplaceholder.typicode.com/todos' => 'test/24_03_25/resource/todos.json',
      'https://jsonplaceholder.typicode.com/users' => 'test/24_03_25/resource/users.json',
      _ => throw Exception('Unknown URI: $uri')
    };
  }
}