import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/practice/240325_data_source/http_proxy.dart';

class FakeHttpProxy implements HttpProxy {
  @override
  Future<http.Response> get(Uri uri) {
    return _getResponse(uri);
  }

  Future<http.Response> _getResponse(Uri uri) async {
    return http.Response(
        await readFile(_getUriToPath(uri)), 200
    );
  }

  Future<String> readFile(String path) async {
    File file = File(path);
    final String result = await file.readAsString();
    return result;
  }

  String _getUriToPath(Uri uri) {
    return switch(uri.toString()) {
      'http://swopenapi.seoul.go.kr/api/subway/sample/xml/realtimeStationArrival/0/5/%EC%84%9C%EC%9A%B8' =>
      'test/lib/practice/240325_data_source/resource/subway_info.xml',
      _ => throw Exception('Unknown URI: $uri'),
    };
  }
}