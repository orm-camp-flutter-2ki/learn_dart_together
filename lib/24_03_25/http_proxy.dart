import 'package:http/http.dart' as http;

abstract interface class HttpProxy {
  http.Response get(String url);
}
