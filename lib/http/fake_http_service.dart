import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/http/custom_http_client.dart';
import 'package:learn_dart_together/http/http_core.dart';
import 'package:learn_dart_together/http/url.dart';

class FakeHttpService implements CustomHttpClient {
  @override
  Future<String> get(String url) async {
    return http.Response(await _fileToBody(url), 200, headers: {
      HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
    }).body;
  }

  Future<String> _fileToBody(String url) async {
    return await (File(_getUrlToFilePath(url)).readAsString());
  }

  String _getUrlToFilePath(String url) {
    switch (url) {
      case maskUrl:
        return 'test/24_03_27/resource/mask.json';

      default:
        throw Exception();
    }
  }
}
