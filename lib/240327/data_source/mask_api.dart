import 'dart:convert';

import 'package:learn_dart_together/240327/model/store.dart';
import 'package:http/http.dart' as http;

class MaskApi {
  final http.Client _client;

  MaskApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<Store>> getMasks() async {
    final response =
        await _client.get(Uri.parse('http://104.198.248.76:3000/mask'));

    final jsonMap = response.statusCode != 200
        ? throw Exception("오류남")
        : jsonDecode(utf8.decode(response.bodyBytes));

    final jsonList = jsonMap['stores'] as List;

    return jsonList.map((e) => Store.fromJson(e)).toList();
  }
}
