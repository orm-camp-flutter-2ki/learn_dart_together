import 'package:http/http.dart' as http;

class HttpService {
  Future<String> get(String url) async {
    final http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode != 200) throw Exception('http response error! ${response.statusCode}');
    return response.body;
  }


}
