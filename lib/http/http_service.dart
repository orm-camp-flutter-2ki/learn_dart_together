import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/http/custom_http_client.dart';

class HttpService implements CustomHttpClient {
  @override
  Future<String> get(String url) async {
    final http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    }
    throw Exception('http response error! ${response.statusCode}');
  }
}
