import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/orm_240327/mask.dart';

class MaskApi {
  final urlBase = 'http://104.198.248.76:3000/mask';

  Future<List<Mask>> getMasks() async {
    final http.Response response = await http.get(Uri.parse(urlBase));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((e) => Mask.fromJson(e)).toList();
    } else {
      throw Exception('실패');
    }
  }
}
