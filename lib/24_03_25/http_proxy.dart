import 'package:http/http.dart' as http;

abstract interface class HttpProxy {
  Future<http.Response> get(Uri url);
}
