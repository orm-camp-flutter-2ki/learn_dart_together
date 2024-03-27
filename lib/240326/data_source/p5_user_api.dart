import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/model_class/p5_model_class.dart';

class UserApi {
  Future<List<User>> getUsersApi() async {
    final http.Response response =
        await http.get(Uri.parse('http://104.198.248.76:3000/mask'));

    List jsonList = await jsonDecode(response.body);
    return jsonList.map((e) => User.fromJson(e)).toList();
  }
}
