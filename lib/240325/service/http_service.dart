import 'package:http/http.dart' as http;

class HttpService {
  Future<String> callGet(url) async {
    final response = await http.get(Uri.parse(url))
        .onError((error, stackTrace) => throw Exception('에러 발생 : $error'));

    if (response.statusCode != 200) throw Exception('에러 발생 : ${response.statusCode}');
    return response.body;
  }
}