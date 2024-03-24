import 'dart:convert';

import 'package:learn_dart_together/fetchdata/data.dart';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/fetchdata/user.dart';

Future<void> main() async {
  UserPool userPool = UserPool();
  Data data = await userPool.getUser();
  List<User> userList = data.userList;
  // 정렬
  JsonEncoder encoder = JsonEncoder.withIndent(' ');
  String jsonStr = encoder.convert(userList);

  print(jsonStr);
}

class UserPool {
  Future<Data> getUser() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    print(response.statusCode);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      //print(jsonDecode(response.body).runtimeType); // List<dynamic>
      return Data.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
