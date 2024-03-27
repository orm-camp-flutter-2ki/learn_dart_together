import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/orm_240327/mask.dart';

class MaskApi {
  final http.Client _client;
  final urlBase = 'http://104.198.248.76:3000/mask';

  MaskApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<Mask>> getMasks() async {
    final response = await _client.get(Uri.parse(urlBase));

    List<Mask> results = [];

    if (response.statusCode == 200) {
      final jsonList = jsonDecode(response.body) as List;

      results = jsonList.map((e) => Mask.fromJson(e)).toList();
    } else {
      throw Exception('실패');
    }
    return results;
  }
}
