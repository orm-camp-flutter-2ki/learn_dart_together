import 'package:http/http.dart' as http;

import 'http_proxy.dart';

class HttpProxyImpl implements HttpProxy {
  @override
  Future<http.Response> get(Uri uri) async {
    return http.get(uri);
  }
}
