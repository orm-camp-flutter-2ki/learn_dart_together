import 'dart:convert';
import 'package:http/http.dart' as http;

class UserApi {
  Future<List<dynamic>> getUser() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    final List jsonList = jsonDecode(response.body);

    return jsonList;
  }
}