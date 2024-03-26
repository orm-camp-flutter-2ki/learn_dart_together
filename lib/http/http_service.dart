import 'package:http/http.dart' as http;

class HttpService {
  Future<http.Response> get(String url) async {
    final http.Response response =  await http.get(Uri.parse(url));
    return response;
  }
}
