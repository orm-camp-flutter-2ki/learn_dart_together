import 'package:http/http.dart' as http;
import 'package:learn_dart_together/practice/240325_data_source/http_proxy.dart';

// HttpProxy interface 를 사용해서 결합을 낮춘다.
class HttpProxyImpl implements HttpProxy {
  @override
  Future<http.Response> get(Uri uri) {
    return http.get(uri);
  }

}