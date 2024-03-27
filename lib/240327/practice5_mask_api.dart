import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/model_class/p5_model_class.dart';

class MaskApi {
  Future<List<User>> getMaskApi() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    List jsonList = await jsonDecode(response.body);
    return jsonList.map((e) => User.fromJson(e)).toList();
  }
}
